SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Stoeger Coachgun"
SWEP.AbbrevName = "Coachgun"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "5Shotgun"

SWEP.Description = "Double barrel shotgun from the Old West.\nCumbersome and inaccurate, but still packs a punch."
SWEP.Description_Quote = "Lock, stock, and two smoking barrels."

SWEP.Trivia_Caliber = "12 Gauge"
SWEP.Trivia_Manufacturer = "Stoeger"
SWEP.Trivia_Year = "1875"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Model/Textures: Fistful of Frags (Macaroane, Paul68Rageous, Tigg)
Sounds: Fistful of Frags, rzen1th
Animations: 8Z
]]
SWEP.ViewModel = "models/weapons/tacint_extras/v_coachgun.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_coachgun.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 16,
        Damage_Min = 3,
        RPM = 80,
        RecoilKick = 14,
        Spread = 0.024,
        ShotgunPelletSpread = 0.02,
        ReloadTimeMult = 1.35,
        ShootingSpeedMult = 0.5,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 14,
        Damage_Min = 2,
        RPM = 60,
        ShootTimeMult = 1.1,
        Range_Min = 300,
        Range_Max = 1400,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Shotgun

// "ballistics"

SWEP.Damage_Max = 14
SWEP.Damage_Min = 3
SWEP.Range_Min = 400
SWEP.Range_Max = 2000
SWEP.Penetration = 1
SWEP.ArmorPenetration = 0.4
SWEP.ArmorBonus = 1

SWEP.Num = 8

SWEP.MuzzleVelocity = 8000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
    [HITGROUP_GEAR] = 0.9
}


// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 70

SWEP.Spread = 0.026
SWEP.ShotgunPelletSpread = 0.02

SWEP.HipFireSpreadPenalty = 0.025
SWEP.MidAirSpreadPenalty = 0

SWEP.ShootTimeMult = 0.9

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 1
SWEP.RecoilResetTime = 0.25
SWEP.RecoilDissipationRate = 1
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 6
SWEP.RecoilKick = 12
SWEP.RecoilAltMultiplier = 200

SWEP.RecoilSpreadPenalty = 0

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.8
SWEP.ShootingSpeedMult = 0.25
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.3

SWEP.AimDownSightsTime = 0.46
SWEP.SprintToFireTime = 0.5

SWEP.Sway = 1.25
SWEP.ScopedSway = 0.2

SWEP.FreeAimMaxAngle = 5

// hold types

SWEP.HoldType = "shotgun"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -1, 0)

SWEP.BlindFireAng = Angle(0, 0, 0)
SWEP.BlindFirePos = Vector(2, 2, -1)

SWEP.BlindFireSuicideAng = Angle(0, 120, 20)
SWEP.BlindFireSuicidePos = Vector(-7, 32, -37)

SWEP.SprintAng = Angle(45, -10, 0)
SWEP.SprintPos = Vector(6, 0, 0)

SWEP.SightAng = Angle(0, 0.3, 0)
SWEP.SightPos = Vector(-3.15, 0, 1.6)

SWEP.CorrectiveAng = Angle(-0.2, 0, 0.5)
SWEP.CorrectivePos = Vector(-0.025, 0, 0.15)

SWEP.CustomizeAng = Angle(30, 15, 0)
SWEP.CustomizePos = Vector(5, 0, -2)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)


// reload

SWEP.ClipSize = 2
SWEP.Ammo = "buckshot"

SWEP.ReloadUpInTime = 1.7

SWEP.ReloadTimeMult = 1.5

// sounds

local path = "tacint_extras/coachgun/"
local path1 = "tacint_extras/toz34/"

SWEP.Sound_Shoot = "^" .. path .. "coach_fire2.wav"

SWEP.Vol_Shoot = 125
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1

SWEP.MuzzleEffect = "muzzleflash_shotgun"

// anims
// VM:
// idle
// fire
// fire1, fire2
// dryfire
// melee
// reload
// midreload
// prime_grenade
// throw_grenade
// throw_grenade_underhand
// deploy
// blind_idle
// blind_fire
// blind_fire1, blind_fire2...
// blind_dryfire

// WM:
// attack1
SWEP.AnimationTranslationTable = false
SWEP.AnimationTranslationTable = {
    ["deploy"] = "deploy",
    ["blind_fire"] = {"blind_fire1", "blind_fire2"},
    ["melee"] = "melee",
}

local hammeranims = {
    ["idle"] = true,
    ["melee"] = true,
    ["deploy"] = true,
    ["holster"] = true,
    ["prime_grenade"] = true,
    ["throw_grenade"] = true,
    ["throw_grenade_underhand"] = true,
}

SWEP.Hook_TranslateSequence = function(self, seq)
    if seq == "fire1" then
        if self:Clip1() == 1 then
            return "fire1"
        else
            return "fire2"
        end
    elseif seq == "reload" and self:Clip1() == 1 then
        return "reload_1"
    elseif hammeranims[seq] then
        if self:Clip1() == 2 then
            return seq .. "_2"
        elseif self:Clip1() == 1 then
            return seq .. "_1"
        end
    end
end

SWEP.DeployTimeMult = 1

SWEP.LastShot = false

// attachments

SWEP.AttachmentElements = {
    ["short"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Barrel",
        Category = "barrel_coachgun",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [2] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Ammo",
        Category = {"ammo_shotgun2"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_coachgun.open", path .. "coach_open.wav")
addsound("tacint_coachgun.close", path .. "coach_close.wav")
addsound("tacint_coachgun.magout", path .. "coach_extract.wav")
addsound("tacint_coachgun.magin", path1 .. "grab.ogg")
addsound("tacint_coachgun.deploy", path1 .. "deploy.wav")
addsound("tacint_coachgun.holster", path1 .. "holster.wav")
addsound("tacint_coachgun.hammer", "tacrp/weapons/mr96/mr96_cockhammer.wav")