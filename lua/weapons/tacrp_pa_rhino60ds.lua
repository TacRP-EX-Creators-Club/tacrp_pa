SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Chiappa Rhino 60DS"
SWEP.AbbrevName = "Rhino 60DS"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "2Magnum Pistol"

SWEP.Description = "Modern long barrel revolver with hexagonal cylinder.\nBulky and has a heavy trigger, but recoil control is excellent."
SWEP.Description_Quote = "\"It's simple: overspecialize, and you breed in weakness. It's a slow death.\"" // Ghost in The Shell. Togusa's gun is actually a Mateba but the Rhino is very similar and often confused for one (and has the same designer (and has similar features (and was used in the live action movie we dont talk about))).

SWEP.Trivia_Caliber = ".357 Magnum"
SWEP.Trivia_Manufacturer = "Chiappa Firearms"
SWEP.Trivia_Year = "2008"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = "Assets: Crytek, ported by Dorian15\nAnimation: Tactical Intervention"

SWEP.ViewModel = "models/weapons/tacint_extras/v_rhino60ds.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_rhino60ds.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 50,
        Damage_Min = 25,
        Range_Min = 600,
        Range_Max = 4000,
        RPM = 120,
        RecoilKick = 5,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 35,
        Damage_Min = 20,

        Range_Min = 800,
        Range_Max = 2400,

        RPM = 90,
        RecoilKick = 5,

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
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Magnum

// "ballistics"

SWEP.Damage_Max = 48 // damage at minimum range
SWEP.Damage_Min = 26 // damage at maximum range
SWEP.Range_Min = 600 // distance for which to maintain maximum damage
SWEP.Range_Max = 3500 // distance at which we drop to minimum damage
SWEP.Penetration = 6 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.9

SWEP.MuzzleVelocity = 12000

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

SWEP.RPM = 110

SWEP.Spread = 0.004

SWEP.ShootTimeMult = 1

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2
SWEP.RecoilResetTime = 0
SWEP.RecoilDissipationRate = 10
SWEP.RecoilFirstShotMult = 0.9

SWEP.RecoilVisualKick = 4
SWEP.RecoilKick = 5.5
SWEP.RecoilStability = 0.65

SWEP.RecoilSpreadPenalty = 0.01

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.7
SWEP.SightedSpeedMult = 0.75

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.28
SWEP.SprintToFireTime = 0.32

SWEP.FreeAimMaxAngle = 5

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

SWEP.SightAng = Angle(0.1, -0.1, 0)
SWEP.SightPos = Vector(-3.4, 0, -3.43)

SWEP.CorrectivePos = Vector(0, 0, 0.1)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

SWEP.Sway = 1.5
SWEP.ScopedSway = 0.6

// reload

SWEP.ClipSize = 6
SWEP.Ammo = "357"

SWEP.ReloadTimeMult = 1.1

SWEP.ReloadUpInTime = 1.35

SWEP.JamSkipFix = true

// sounds

local path = "tacint_extras/rhino60ds/"
local path1 = "TacRP/weapons/mr96/"

SWEP.Sound_Shoot = "^" .. path .. "pt25_fire_fp_131.wav"

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
    vm_pos = Vector(0, -3, -3),
    vm_ang = Angle(0, 9, 0),
    t = 0.4,
    tmax = 0.4,
    bones = {
        {
            bone = "ValveBiped.cylinder",
            ang = Angle(-60, 0, 0),
            t0 = 0,
            t1 = 0.25,
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
        Category = {"optic_cqb_verytall", "optic_medium"},
        Bone = "ValveBiped.mr96_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 0.85,
        WMScale = 0.85,
        Pos_VM = Vector(-3.9, -0.09, 7.5),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0.14, 5, -0.4),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.mr96_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(-1.5, -0.125, 10),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(0.14, 8, -3),
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

addsound("tacint_rhino60ds.Release_Cylinder", path .. "pt25_reload_fp_03_cyl_open.wav")
addsound("tacint_rhino60ds.Eject_Shells", path .. "pt25_reload_fp_04_shell_out.wav")
addsound("tacint_rhino60ds.Insert_Bullets", path1 .. "mr96_insert_bullets.wav")
addsound("tacint_rhino60ds.Shut_Cylinder", path .. "pt25_reload_fp_09_cyl_close.wav")
addsound("tacint_rhino60ds.Insert_Bullets-Mid", path1 .. "mr96_insert_bullets-mid.wav")
addsound("tacint_rhino60ds.Cock_Hammer", path1 .. "mr96_cockhammer.wav")
addsound("tacint_rhino60ds.Deploy", path1 .. "mr96_deploy.wav")