AddCSLuaFile()

ENT.Base                     = "tacrp_proj_base"
ENT.PrintName                = "M202 Harpoon"
ENT.Spawnable                = false

ENT.Model                    =  "models/props_junk/harpoon002a.mdl"

ENT.IsRocket = false // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.SmokeTrail = false

local path = "tacrp/weapons/knife/"
ENT.Sound_MeleeHit = {
    path .. "/scrape_metal-1.wav",
    path .. "/scrape_metal-2.wav",
    path .. "/scrape_metal-3.wav",
}
ENT.Sound_MeleeHitBody = {
    path .. "/flesh_hit-1.wav",
    path .. "/flesh_hit-2.wav",
    path .. "/flesh_hit-3.wav",
    path .. "/flesh_hit-4.wav",
    path .. "/flesh_hit-5.wav",
}

function ENT:OnInitialize()
    if SERVER then
        self:GetPhysicsObject():SetDragCoefficient(10)
        self:Ignite(30)
    end
end

function ENT:Impact(data, collider)
    local tgt = data.HitEntity
    local attacker = self.Attacker or self:GetOwner() or self
    local d = data.OurOldVelocity:GetNormalized()
    if IsValid(tgt) then
        local ang = data.OurOldVelocity:Angle()
        local fx = EffectData()
        fx:SetOrigin(data.HitPos)
        fx:SetNormal(-ang:Forward())
        fx:SetAngles(-ang)
        util.Effect("ManhackSparks", fx)

        if IsValid(data.HitEntity) then
            data.HitEntity:Ignite(math.Rand(5, 10), 128)
            local dmginfo = DamageInfo()
            dmginfo:SetAttacker(attacker)
            dmginfo:SetInflictor(self)
            dmginfo:SetDamageType(DMG_SLASH)
            dmginfo:SetDamage(self.NPCDamage and 25 or math.Clamp(self:GetVelocity():Length() / 15, 25, 400))
            dmginfo:SetDamageForce(data.OurOldVelocity)
            dmginfo:SetDamagePosition(data.HitPos)
            data.HitEntity:TakeDamageInfo(dmginfo)
        end

        if data.HitEntity:IsNPC() or data.HitEntity:IsPlayer() or data.HitEntity:IsNextBot() then
            self:EmitSound("weapons/crossbow/bolt_skewer1.wav", 80, 90)
            timer.Simple(0, function()
                if !IsValid(data.HitEntity) or data.HitEntity:Health() <= 0 then
                    self:GetPhysicsObject():SetVelocityInstantaneous(data.OurOldVelocity * 0.5)
                    self:GetPhysicsObject():SetAngleVelocityInstantaneous(data.OurOldAngularVelocity)
                else
                    self:Remove()
                end
            end)
        end

        self.Armed = false
    else
        local ang = data.OurOldVelocity:Angle()
        local fx = EffectData()
        fx:SetOrigin(data.HitPos)
        fx:SetNormal(-ang:Forward())
        fx:SetAngles(-ang)
        util.Effect("ManhackSparks", fx)
        if SERVER then
            self:EmitSound(istable(self.Sound_MeleeHit) and self.Sound_MeleeHit[math.random(1, #self.Sound_MeleeHit)] or self.Sound_MeleeHit, 80, 110, 1)
        end

        -- leave a bullet hole. Also may be able to hit things it can't collide with (like stuck C4)
        self:FireBullets({
            Attacker = attacker,
            Damage = self.Damage,
            Force = 1,
            Distance = 4,
            HullSize = 4,
            Tracer = 0,
            Dir = ang:Forward(),
            Src = data.HitPos - ang:Forward(),
            IgnoreEntity = self,
            Callback = function(atk, tr, dmginfo)
                dmginfo:SetInflictor(IsValid(self.Inflictor) and self.Inflictor or self)
            end
        })

        -- freeze the projectile in place
        self:SetPos(data.HitPos - d * 8)
        self:SetAngles(ang)
        self:SetMoveType(MOVETYPE_NONE)
        self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
        self:Ignite(5, 128)


        timer.Simple(5, function()
            if IsValid(self) then
                self:SetRenderMode(RENDERMODE_TRANSALPHA)
                self:SetRenderFX(kRenderFxFadeFast)
            end
        end)
        SafeRemoveEntityDelayed(self, 7)
    end

    return true
end

ENT.SmokeTrail = true
local smokeimages = {"particle/smokesprites_0001", "particle/smokesprites_0002", "particle/smokesprites_0003", "particle/smokesprites_0004", "particle/smokesprites_0005", "particle/smokesprites_0006", "particle/smokesprites_0007", "particle/smokesprites_0008", "particle/smokesprites_0009", "particle/smokesprites_0010", "particle/smokesprites_0011", "particle/smokesprites_0012", "particle/smokesprites_0013", "particle/smokesprites_0014", "particle/smokesprites_0015", "particle/smokesprites_0016"}
local function GetSmokeImage()
    return smokeimages[math.random(#smokeimages)]
end
function ENT:DoSmokeTrail()
    if CLIENT and self.SmokeTrail and self:GetVelocity():Length() >= 100 then
        local pos = self:GetPos() + self:GetUp() * 4
        local emitter = ParticleEmitter(pos)
        local smoke = emitter:Add(GetSmokeImage(), pos)

        smoke:SetStartAlpha(100)
        smoke:SetEndAlpha(0)

        smoke:SetStartSize(2)
        smoke:SetEndSize(math.Rand(16, 24))

        smoke:SetRoll(math.Rand(-180, 180))
        smoke:SetRollDelta(math.Rand(-1, 1))

        smoke:SetVelocity(VectorRand() * 8 + self:GetUp() * 16)
        smoke:SetColor(200, 200, 200)
        smoke:SetLighting(true)

        smoke:SetDieTime(math.Rand(0.5, 0.75))

        smoke:SetGravity(Vector(0, 0, 15))

        local fire = emitter:Add("effects/fire_cloud" .. math.random(1, 2), pos)
        fire:SetStartAlpha(150)
        fire:SetEndAlpha(0)
        fire:SetStartSize(math.Rand(2, 4))
        fire:SetEndSize(math.Rand(8, 16))
        fire:SetRoll(math.Rand(-180, 180))
        fire:SetRollDelta(math.Rand(-1, 1))
        fire:SetVelocity(VectorRand() * 16 + self:GetUp() * 16)
        fire:SetLighting(false)
        fire:SetDieTime(math.Rand(0.1, 0.3))
        fire:SetGravity(Vector(0, 0, 50))

        emitter:Finish()
    end
end