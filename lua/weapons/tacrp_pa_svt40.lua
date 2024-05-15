SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "SVT-40"
SWEP.AbbrevName = "SVT-40"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "5Battle Rifle"

SWEP.Description = "World War 2 era semi-automatic rifle designed for extreme mass production. Powerful, but inaccurate and unreliable. Limited optic choices."

SWEP.Trivia_Caliber = "7.62x54mmR"
SWEP.Trivia_Manufacturer = "Tula Arsenal"
SWEP.Trivia_Year = "1940"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = "Model: MrRifleman\nTexture: BuLL5H1T"

SWEP.ViewModel = "models/weapons/tacint/v_svt40.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_m14.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 50,
        Damage_Min = 30,
        Range_Min = 1000,
        Range_Max = 6500,
        SpreadMult = 0.6,
        ArmorPenetration = 0.95,
    },
    [TacRP.BALANCE_TTT] = {

        Damage_Max = 34,
        Damage_Min = 25,
        Range_Min = 800,
        Range_Max = 5000,
        RPM = 230,

        RecoilResetInstant = true,
        RecoilResetTime = 0.18,
        RecoilDissipationRate = 3,
        RecoilMaximum = 3,
        RecoilSpreadPenalty = 0.01,
        RecoilFirstShotMult = 0.5,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3.5,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.75,
            [HITGROUP_RIGHTARM] = 0.75,
            [HITGROUP_LEFTLEG] = 0.5,
            [HITGROUP_RIGHTLEG] = 0.5,
            [HITGROUP_GEAR] = 0.5
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 30,
        Damage_Min = 20,
        Range_Min = 800,
        Range_Max = 5000,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        HipFireSpreadPenalty = 0.015,
        RecoilSpreadPenalty = 0.01,
        RecoilMaximum = 10
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MarksmanRifle

// "ballistics"

SWEP.Damage_Max = 40 // damage at minimum range
SWEP.Damage_Min = 32 // damage at maximum range
SWEP.Range_Min = 900 // distance for which to maintain maximum damage
SWEP.Range_Max = 5000 // distance at which we drop to minimum damage
SWEP.Penetration = 17 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.85

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

SWEP.MuzzleVelocity = 35000

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 300

SWEP.Spread = 0.005

SWEP.JamFactor = 0.015

SWEP.ShootTimeMult = 0.5

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 5
SWEP.RecoilResetTime = 0
SWEP.RecoilDissipationRate = 6
SWEP.RecoilFirstShotMult = 0.7

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 7
SWEP.RecoilStability = 0.6
SWEP.RecoilAltMultiplier = 50

SWEP.RecoilSpreadPenalty = 0.008
SWEP.HipFireSpreadPenalty = 0.1
SWEP.PeekPenaltyFraction = 0.1

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.6

SWEP.AimDownSightsTime = 0.4
SWEP.SprintToFireTime = 0.5

SWEP.Sway = 2
SWEP.ScopedSway = 0.25

SWEP.FreeAimMaxAngle = 7.5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -6)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(7, -3, -2)

SWEP.SprintMidPoint = {
    Pos = Vector(4, 5, 2),
    Ang = Angle(0, -2, -45)
}

SWEP.SightAng = Angle(0, 0, 0)
SWEP.SightPos = Vector(-3.81, -7.5, -2.5)

SWEP.CorrectivePos = Vector(0.025, -7.5, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 10
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/svt40.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.85
SWEP.DropMagazineTime = 0.5

// sounds

local path = "tacint_extras/svt40/svt40_"

SWEP.Sound_Shoot = "^" .. path .. "fire.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/g36k/g36k_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_m14"
SWEP.EjectEffect = 2

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "shoot2",
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = "blind_shoot1"
}

// attachments

SWEP.AttachmentElements = {
    ["scope"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = "optic_pu",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.m14_rootbone",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-2.85, 0.2, 40.1),
        Pos_WM = Vector(30, 0, -14.5),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(-22.5, 5, 180),
        VMScale = 1
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.m14_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-3, -0.25, 27),
        Pos_WM = Vector(23, 0, -11),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(-22.5, 5, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "perk_extendedmag", "acc_sling", "acc_duffle", "acc_bipod"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
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

addsound("TacInt_svt40.remove_clip", path .. "mag_out.wav")
addsound("TacInt_svt40.insert_clip", path .. "mag_in.wav")
addsound("TacInt_svt40.bolt_release", path .. "release.wav")
