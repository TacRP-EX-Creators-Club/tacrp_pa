SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "TOZ-34"
SWEP.AbbrevName = "TOZ-34"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "5Shotgun"

SWEP.Description = "Double-barrel hunting shotgun. Has decent accuracy and lethality, but its bulk and slow reload makes it ill-suited for combat."
SWEP.Description_Quote = "\"A nu, chiki briki i v damki!\""

SWEP.Trivia_Caliber = "12 Gauge"
SWEP.Trivia_Manufacturer = "Tulsky Oruzheiny Zavod"
SWEP.Trivia_Year = "1964"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = "Model: SAM61\nSound: rzen1th\nAnimations: speedonerd & 8Z"

SWEP.ViewModel = "models/weapons/tacint_extras/v_toz34.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_toz34.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 17,
        Damage_Min = 10,
        RPM = 130,
        ReloadTimeMult = 1.15,
        ShootingSpeedMult = 0.8,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 12,
        Damage_Min = 6,
        RPM = 85,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Shotgun

// "ballistics"

SWEP.Damage_Max = 15
SWEP.Damage_Min = 8
SWEP.Range_Min = 500
SWEP.Range_Max = 2800
SWEP.Penetration = 1
SWEP.ArmorPenetration = 0.45

SWEP.Num = 8

SWEP.MuzzleVelocity = 10500

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemodes = {
    1
}

SWEP.RPM = 90

SWEP.Spread = 0.015
SWEP.ShotgunPelletSpread = 0.012

SWEP.HipFireSpreadPenalty = 0.01
SWEP.MidAirSpreadPenalty = 0

SWEP.ShootTimeMult = 0.75

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 1
SWEP.RecoilResetTime = 0.3
SWEP.RecoilDissipationRate = 2
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 3
SWEP.RecoilKick = 12
SWEP.RecoilStability = 0.6
SWEP.RecoilAltMultiplier = 200

SWEP.RecoilSpreadPenalty = 0.02

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.65

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.42
SWEP.SprintToFireTime = 0.44

SWEP.Sway = 1.5
SWEP.ScopedSway = 0.1

SWEP.FreeAimMaxAngle = 6

// hold types

SWEP.HoldType = "shotgun"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(1, 0, 0)
SWEP.PassivePos = Vector(0.25, 1, 0.2)

SWEP.BlindFireAng = Angle(0, 0, 0)
SWEP.BlindFirePos = Vector(2, 2, -1)

SWEP.BlindFireSuicideAng = Angle(0, 120, 20)
SWEP.BlindFireSuicidePos = Vector(-7, 30, -25)

SWEP.SprintAng = Angle(45, -10, 0)
SWEP.SprintPos = Vector(8, 0, 1)

SWEP.SightAng = Angle(0, 0.4, 0)
SWEP.SightPos = Vector(-3.2, -4, 1.6)

SWEP.CustomizeAng = Angle(30, 15, 0)
SWEP.CustomizePos = Vector(5, 0, -2)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)


// reload

SWEP.ClipSize = 2
SWEP.Ammo = "buckshot"

SWEP.ReloadUpInTime = 1.85

SWEP.ReloadTimeMult = 1.3

// sounds

local path = "tacint_extras/toz34/"
local path1 = "tacint_shark/nitrorifle/"

SWEP.Sound_Shoot = "^" .. path .. "fire-01.ogg"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.EjectEffect = 0

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
SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire_iron"] = "fire_iron",
    ["fire1"] = "fire1",
    ["fire2"] = "fire1",
    ["blind_fire"] = "blind_fire1",
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "dryfire"
}

SWEP.DeployTimeMult = 1.75

SWEP.LastShot = false

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [2] = {
        PrintName = "Ammo",
        Category = {"ammo_shotgun"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
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

local function addshellsound(name, spath)
    sound.Add({
        name = name,
        channel = 15,
        volume = 0.9,
        sound = spath
    })
end


addsound("tacint_toz34.open", path .. "open.ogg")
addsound("tacint_toz34.close", path .. "close.ogg")
addsound("tacint_toz34.magin", path .. "grab.ogg")
addsound("tacint_toz34.deploy", path1 .. "deploy.wav")
addsound("tacint_toz34.holster", path1 .. "holster.wav")
addshellsound("tacint_toz34.shells", path .. "eject.ogg")