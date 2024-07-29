AddCSLuaFile()

ENT.Base                     = "tacrp_proj_base"
ENT.PrintName                = "M202 Rocket (HE)"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/tacint/rocket_deployed.mdl"

ENT.IsRocket = true // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = true
ENT.ExplodeUnderwater = true

ENT.Delay = 0
ENT.SafetyFuse = 0.05

ENT.AudioLoop = "TacRP/weapons/rpg7/rocket_flight-1.wav"

ENT.SmokeTrail = true

ENT.FlareColor = Color(255, 255, 200)


function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()

    local mult = TacRP.ConVars["mult_damage_explosive"]:GetFloat()
    if self.NPCDamage then
        util.BlastDamage(self, attacker, self:GetPos(), 300, 50 * mult)
    else
        util.BlastDamage(self, attacker, self:GetPos(), 300, 200 * mult)
        self:FireBullets({
            Attacker = attacker,
            Damage = 1000 * mult,
            Tracer = 0,
            Src = self:GetPos(),
            Dir = self:GetForward(),
            HullSize = 32,
            Distance = 128,
            IgnoreEntity = self,
            Callback = function(atk, btr, dmginfo)
                dmginfo:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST) // airboat damage for helicopters and LVS vehicles
                dmginfo:SetDamageForce(self:GetForward() * 16000) // LVS uses this to calculate penetration!
            end,
        })
    end

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("Explosion", fx)
    end

    self:EmitSound("TacRP/weapons/rpg7/explode.wav", 125)

    self:Remove()
end