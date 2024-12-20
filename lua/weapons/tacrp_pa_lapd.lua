SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "LAPD 2019 Blaster"
SWEP.AbbrevName = "LAPD 2019"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "2Magnum Pistol"

SWEP.Description = "Gunsmith-custom based on an iconic film weapon, featuring excellent handling and an integrated laser sight."
SWEP.Description_Quote = "\"Quite an experience to live in fear, isn't it? That's what it is to be a slave.\"" // I dont need to tell you where this is from

SWEP.Trivia_Caliber = ".44 Special" // The Fallout homage to this gun uses 5.56, but the model clearly has magnum cartridges loaded.
SWEP.Trivia_Manufacturer = "Steyr, Charter Arms"
SWEP.Trivia_Year = "2019"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Assets: Fallout: New Vegas
Animations: Tactical Intervention, Fesiug, 8Z]]

SWEP.ViewModel = "models/weapons/tacint_extras/v_thatgun.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_thatgun.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 30,
        Damage_Min = 22,

        Range_Min = 800,
        Range_Max = 1800,

        RPM = 120,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 4,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.75
        },

        HipFireSpreadPenalty = 0.01,
        RecoilMaximum = 2,
        RecoilDissipationRate = 9,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Magnum

// "ballistics"

SWEP.Damage_Max = 50 // damage at minimum range
SWEP.Damage_Min = 34 // damage at maximum range
SWEP.Range_Min = 800 // distance for which to maintain maximum damage
SWEP.Range_Max = 3000 // distance at which we drop to minimum damage
SWEP.Penetration = 7 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.725

SWEP.MuzzleVelocity = 18000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Double-Action" // only used externally for firemode name distinction

SWEP.RPM = 150

SWEP.Spread = 0.0025

SWEP.ShootTimeMult = 1

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2.5
SWEP.RecoilResetTime = 0
SWEP.RecoilDissipationRate = 24
SWEP.RecoilFirstShotMult = 0.9

SWEP.RecoilVisualKick = 4
SWEP.RecoilKick = 7
SWEP.RecoilStability = 0.45

SWEP.RecoilSpreadPenalty = 0.008
SWEP.HipFireSpreadPenalty = 0.014

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.2
SWEP.SprintToFireTime = 0.27

SWEP.FreeAimMaxAngle = 3.5

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -4)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-125, 0, 45)
SWEP.BlindFireSuicidePos = Vector(25, 12, -6)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(2, 0, -12)

SWEP.SightAng = Angle(-0.15, 0, 0)
SWEP.SightPos = Vector(-3.5, 0, -4.1)

SWEP.CorrectivePos = Vector(0, 0, 0.1)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

SWEP.Sway = 1.5
SWEP.ScopedSway = 0.6

// reload

SWEP.ClipSize = 5
SWEP.Ammo = "357"

SWEP.ReloadTimeMult = 1.25

SWEP.ReloadUpInTime = 1.35

SWEP.JamSkipFix = true

// sounds

local path = "tacint_extras/thatgun/"

SWEP.Sound_Shoot = {
    "^" .. path .. "fire-01.ogg",
    "^" .. path .. "fire-02.ogg",
    "^" .. path .. "fire-03.ogg",
}

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
SWEP.QCA_Eject = 0
SWEP.EjectEffect = 0

SWEP.MuzzleEffect = "muzzleflash_1"

// anims

SWEP.ShootTimeMult = 0.75
SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot3"},
    ["fire_iron"] = "shoot1",
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2"},
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "draw"
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -3, -2.4),
    vm_ang = Angle(0, 12, 0),
    t = 0.3,
    tmax = 0.3,
    bones = {
        {
            bone = "ValveBiped.cylinder",
            ang = Angle(-60, 0, 0),
            t0 = 0,
            t1 = 0.2,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger1",
            ang = Angle(0, -15, 0),
            t0 = 0,
            t1 = 0.3,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger11",
            ang = Angle(-35, 0, 0),
            t0 = 0,
            t1 = 0.3,
        },
    },
}

// attachments

SWEP.Laser = true
SWEP.BlindFireCamera = true
SWEP.LaserPower = 1
SWEP.LaserQCAttachmentVM = 1
SWEP.LaserQCAttachmentWM = 1
SWEP.LaserAlwaysAccurate = false
SWEP.CanToggle = true
SWEP.TacticalName = "Laser"

SWEP.Attachments = {
    {
        PrintName = "Accessory",
        Category = {"acc", "acc_holster", "acc_brace", "acc_bipod"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    {
        PrintName = "Trigger",
        Category = {"trigger_revolver"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    {
        PrintName = "Ammo",
        Category = {"ammo_pistol", "ammo_roulette"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    {
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

addsound("TacInt_thatgun.Release_Cylinder",	path .. "reload-01.ogg")
addsound("TacInt_thatgun.Eject_Shells",		path .. "reload-02.ogg")
addsound("TacInt_thatgun.Insert_Bullets",	path .. "reload-03.ogg")
addsound("TacInt_thatgun.Shut_Cylinder",	path .. "reload-04.ogg")
addsound("TacInt_thatgun.Cock_Hammer",		path .. "cock.ogg")
addsound("TacInt_thatgun.Deploy",			path .. "equip.ogg")
addsound("TacInt_thatgun.Insert_Bullets-Mid", path .. "reload-03.ogg")