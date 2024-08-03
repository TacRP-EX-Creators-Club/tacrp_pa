EFFECT.Model = "models/Items/AR2_Grenade.mdl"

function EFFECT:Init(data)
    self:SetModel(self.Model)
    local emitter = ParticleEmitter(data:GetOrigin())
    if not IsValid(emitter) then return end
    for i = 1, 10 do
        local smoke = emitter:Add("particle/smokestack", data:GetOrigin())
        smoke:SetVelocity(VectorRand() * 100)
        smoke:SetGravity(Vector(math.Rand(-5, 5), math.Rand(-5, 5), 70))
        smoke:SetDieTime(math.Rand(5, 7))
        smoke:SetStartAlpha(80)
        smoke:SetEndAlpha(0)
        smoke:SetStartSize(math.Rand(20, 40))
        smoke:SetEndSize(80)
        smoke:SetRoll(math.Rand(-180, 180))
        smoke:SetRollDelta(math.Rand(-0.5, 0.5))
        smoke:SetColor(175, 175, 175)
        smoke:SetAirResistance(120)
        smoke:SetPos(self:GetPos())
        smoke:SetLighting(false)
        smoke:SetBounce(0.5)
        smoke:SetCollide(true)
    end

    for i = 1, 10 do
        local smoke = emitter:Add("particle/smokestack", data:GetOrigin())
        smoke:SetVelocity(VectorRand() * 800)
        smoke:SetGravity(Vector(math.Rand(-25, 25), math.Rand(-25, 25), -500))
        smoke:SetDieTime(math.Rand(0.6, 1))
        smoke:SetStartAlpha(120)
        smoke:SetEndAlpha(0)
        smoke:SetStartSize(80)
        smoke:SetEndSize(250)
        smoke:SetRoll(math.Rand(-180, 180))
        smoke:SetRollDelta(math.Rand(-0.5, 0.5))
        smoke:SetColor(100, 100, 100)
        smoke:SetAirResistance(300)
        smoke:SetPos(self:GetPos())
        smoke:SetLighting(false)
        smoke:SetBounce(0.5)
        smoke:SetCollide(true)
    end

    for i = 1, 10 do
        local fire = emitter:Add("effects/fire_cloud" .. math.random(1, 2), data:GetOrigin())
        fire:SetVelocity(VectorRand() * 1200 - Vector(0, 0, 100))
        fire:SetGravity(Vector(0, 0, 0))
        fire:SetDieTime(math.Rand(0.1, 0.25))
        fire:SetStartAlpha(255)
        fire:SetEndAlpha(0)
        fire:SetStartSize(math.Rand(15, 30))
        fire:SetEndSize(math.Rand(180, 200))
        fire:SetRoll(math.Rand(-180, 180))
        fire:SetRollDelta(math.Rand(-0.5, 0.5))
        fire:SetColor(200, 200, 200)
        fire:SetAirResistance(300)
        fire:SetPos(self:GetPos())
        fire:SetLighting(false)
        fire:SetBounce(0.5)
        fire:SetCollide(false)
    end

    for i = 1, 20 do
        local fire = emitter:Add("effects/fire_embers" .. math.random(1, 3), data:GetOrigin())
        local v = VectorRand() * 1500
        v.z = v.z * 0.25
        fire:SetVelocity(v)
        fire:SetGravity(Vector(0, 0, -750))
        fire:SetDieTime(math.Rand(1.2, 3))
        fire:SetStartAlpha(200)
        fire:SetEndAlpha(0)
        fire:SetStartSize(math.Rand(30, 50))
        fire:SetEndSize(math.Rand(40, 70))
        fire:SetRoll(math.Rand(-180, 180))
        fire:SetRollDelta(math.Rand(-0.5, 0.5))
        fire:SetColor(200, 200, 200)
        fire:SetAirResistance(200)
        fire:SetPos(self:GetPos())
        fire:SetLighting(false)
        fire:SetBounce(0.5)
        fire:SetCollide(true)
    end

    for i = 1, math.random(6, 9) do
        local fire = emitter:Add("sprites/glow04_noz", data:GetOrigin())
        fire:SetVelocity(VectorRand() * 100 + Vector(0, 0, math.Rand(300, 800)))
        fire:SetGravity(Vector(0, 0, -400))
        fire:SetDieTime(math.Rand(2, 3))
        fire:SetStartAlpha(200)
        fire:SetEndAlpha(0)
        fire:SetStartSize(math.Rand(3, 5))
        fire:SetEndSize(math.Rand(10, 20))
        fire:SetRoll(math.Rand(-180, 180))
        fire:SetRollDelta(math.Rand(-0.5, 0.5))
        fire:SetColor(255, 180, 100)
        fire:SetAirResistance(2)
        fire:SetPos(self:GetPos())
        fire:SetLighting(false)
        fire:SetBounce(0.2)
        fire:SetCollide(true)
    end
    emitter:Finish()
    self:Remove()
end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
    return false
end