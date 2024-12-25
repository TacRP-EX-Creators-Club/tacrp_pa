SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "SW Model 10"
SWEP.AbbrevName = "SW M10"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "1Pistol"

SWEP.Description = "An iconic revolver favored by cops and criminals alike.\nChambered in a non-magnum cartridge, so it's easy to handle but not that powerful."
SWEP.Description_Quote = "\"Who's 'we', sucka?\" \"Smith and Wesson, and me.\"" // Sudden Impact

SWEP.Trivia_Caliber = ".38 Special"
SWEP.Trivia_Manufacturer = "Smith & Wesson"
SWEP.Trivia_Year = "1899"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = "Model: Harry Ridgeway, MediocrityGoggles\nTexture: Millenia\nSound: Bethesda, Obsidian\nAssets: Tactical Intervention"

SWEP.ViewModel = "models/weapons/tacint_extras/v_sw10.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_sw10.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 35,
        Damage_Min = 20,

        Range_Min = 600,
        Range_Max = 1600,

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

        RecoilMaximum = 2,
        RecoilDissipationRate = 2.5,
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Magnum

// "ballistics"

SWEP.Damage_Max = 36 // damage at minimum range
SWEP.Damage_Min = 18 // damage at maximum range
SWEP.Range_Min = 800 // distance for which to maintain maximum damage
SWEP.Range_Max = 2500 // distance at which we drop to minimum damage
SWEP.Penetration = 5 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.7

SWEP.MuzzleVelocity = 14000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Double-Action" // only used externally for firemode name distinction

SWEP.RPM = 200

SWEP.Spread = 0.003

SWEP.ShootTimeMult = 1

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2
SWEP.RecoilResetTime = 0
SWEP.RecoilDissipationRate = 9
SWEP.RecoilFirstShotMult = 0.9

SWEP.RecoilVisualKick = 3
SWEP.RecoilKick = 7
SWEP.RecoilStability = 0.65

SWEP.RecoilSpreadPenalty = 0.012
SWEP.HipFireSpreadPenalty = 0.01

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.22
SWEP.SprintToFireTime = 0.24

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

SWEP.SightAng = Angle(-0.02, -1.5, 0)
SWEP.SightPos = Vector(-3.45, 0, -2.45)

SWEP.CorrectivePos = Vector(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

SWEP.Sway = 1.5
SWEP.ScopedSway = 0.6

// reload

SWEP.ClipSize = 6
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1.1

SWEP.ReloadUpInTime = 1.35

SWEP.JamSkipFix = true

// sounds

local path = "TacRP/weapons/mr96/"
local path1 = "tacint_extras/sw10/"

SWEP.Sound_Shoot = "^" .. path1 .. "wpn_fire_357revolver.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 2
SWEP.QCA_Eject = 0
SWEP.EjectEffect = 0

SWEP.MuzzleEffect = "muzzleflash_1"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2", "shoot3"},
    ["fire_iron"] = "shoot1",
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2"},
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "draw"
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -3, -2.5),
    vm_ang = Angle(0, 8, 0),
    t = 0.25,
    tmax = 0.25,
    bones = {
        {
            bone = "ValveBiped.cylinder",
            ang = Angle(-60, 0, 0),
            t0 = 0,
            t1 = 0.2,
        },
        {
            bone = "ValveBiped.hammer",
            ang = Angle(35, 0, 0),
            t0 = 0.05,
            t1 = 0.15,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger1",
            ang = Angle(0, -15, 0),
            t0 = 0,
            t1 = 0.2,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger11",
            ang = Angle(-35, 0, 0),
            t0 = 0,
            t1 = 0.15,
        },
    },
}

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = "optic_cqb",
        Bone = "ValveBiped.mr96_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 0.8,
        WMScale = 0.8,
        Pos_VM = Vector(-3.75, -0.1, 4.5),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 2.5, -0.25),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.mr96_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(-2.65, -0.1, 9),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(0, 8, -1.6),
        Ang_WM = Angle(0, -90, 180),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_holster", "acc_brace", "acc_bipod"}, // yes, MR96 with bipod is a real thing!
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Trigger",
        Category = {"trigger_revolver"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol", "ammo_roulette"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    }
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_sw10.Release_Cylinder", path1 .. "WPN_PistolFortyFourWestern_Reload_BoltOpen_01.wav")
addsound("tacint_sw10.Eject_Shells", path .. "mr96_eject_shells.wav")
addsound("tacint_sw10.Insert_Bullets", path1 .. "magin.wav")
addsound("tacint_sw10.Shut_Cylinder", path1 .. "WPN_PistolFortyFourWestern_Reload_BoltClose_01.wav")
addsound("tacint_sw10.Insert_Bullets-Mid", path .. "mr96_insert_bullets-mid.wav")
addsound("tacint_sw10.Cock_Hammer", path1 .. "hammer.wav")
addsound("tacint_sw10.Deploy", path .. "mr96_deploy.wav")