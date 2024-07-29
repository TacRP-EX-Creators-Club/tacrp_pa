AddCSLuaFile()

ENT.Base                     = "tacrp_proj_base"
ENT.PrintName                = "M202 Rocket"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/tacint/rocket_deployed.mdl"

ENT.IsRocket = false // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = true
ENT.ExplodeUnderwater = true

ENT.Delay = 0
ENT.SafetyFuse = 0.05

ENT.AudioLoop = "TacRP/weapons/rpg7/rocket_flight-1.wav"

ENT.SmokeTrail = true

ENT.FlareColor = Color(255, 200, 150)

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()

    local mult = TacRP.ConVars["mult_damage_explosive"]:GetFloat()
    local dmg = DamageInfo()
    dmg:SetDamageType(DMG_BLAST + DMG_BURN)
    dmg:SetDamage(200 * mult)
    dmg:SetDamagePosition(self:GetPos())
    dmg:SetInflictor(self)
    dmg:SetAttacker(attacker)
    util.BlastDamageInfo(dmg, self:GetPos(), 350)

    self:FireBullets({
        Attacker = attacker,
        Damage = 100 * mult,
        Tracer = 0,
        Src = self:GetPos(),
        Dir = self:GetForward(),
        HullSize = 0,
        Distance = 128,
        IgnoreEntity = self,
        Callback = function(atk, btr, dmginfo)
            dmginfo:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST) // airboat damage for helicopters and LVS vehicles
            dmginfo:SetDamageForce(self:GetForward() * 700) // LVS uses this to calculate penetration!
            util.Decal("Scorch", btr.StartPos, btr.HitPos - (btr.HitNormal * 16), self)
        end,
    })

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("tacrp_m202_explode", fx)
        self:EmitSound("^weapons/explode5.wav", 100, 110)
        self:EmitSound("^ambient/fire/ignite.wav", 110, 110)
    end

    for _, ent in pairs(ents.FindInSphere(self:GetPos(), 350)) do
        local tr = util.QuickTrace(self:GetPos(), ent:GetPos() - self:GetPos(), {self, ent})
        if tr.Fraction == 1 then
            // Ignite based on distance
            ent:Ignite(12 * (math.Clamp(122500 - ent:GetPos():DistToSqr(self:GetPos()), 0, 122500) / 122500), 0)
        end
    end

    self:Remove()
end