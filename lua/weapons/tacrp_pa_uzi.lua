SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "IMI Uzi"
SWEP.AbbrevName = "Uzi"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "3Submachine Gun"

SWEP.Description = "Post-war submachine gun with amazing controllability. One of the most iconic guns ever invented. This version fires from a closed bolt."
SWEP.Description_Quote = "\"You know your weapons, buddy.\""

SWEP.Trivia_Caliber = "9x19mm Parabellum"
SWEP.Trivia_Manufacturer = "Israeli Military Industries"
SWEP.Trivia_Year = "1950"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = "Assets: Tactical Intervention"

SWEP.ViewModel = "models/weapons/tacint/v_uzi_b.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_xd45.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 26,
        Damage_Min = 6,

        RecoilSpreadPenalty = 0.004,
        HipFireSpreadPenalty = 0.025,
        RecoilKick = 8,
        FreeAimMaxAngle = 4,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 20,
        Damage_Min = 5,
        Range_Min = 200,
        Range_Max = 1200,
        RPM = 650,

        Spread = 0.0125,
        FreeAimMaxAngle = 4,

        HipFireSpreadPenalty = 0.035,
        RecoilSpreadPenalty = 0.0065,
        RecoilMaximum = 14,
        RecoilResetTime = 0.15,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 15,
        Damage_Min = 7,

        RecoilSpreadPenalty = 0.004,
        HipFireSpreadPenalty = 0.025,
        RecoilKick = 8,
        FreeAimMaxAngle = 4,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilMaximum = 20
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachinePistol

// "ballistics"

SWEP.Damage_Max = 30
SWEP.Damage_Min = 10
SWEP.Range_Min = 1000
SWEP.Range_Max = 2500
SWEP.Penetration = 3
SWEP.ArmorPenetration = 0.525
SWEP.ArmorBonus = 0.5

SWEP.MuzzleVelocity = 17000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.15,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemodes = {2, 1}

SWEP.RPM = 550

SWEP.Spread = 0.01


SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 11
SWEP.RecoilResetTime = 0.02
SWEP.RecoilDissipationRate = 33
SWEP.RecoilFirstShotMult = 1.75

SWEP.RecoilVisualKick = 1.0
SWEP.RecoilKick = 1.25
SWEP.RecoilStability = 0.65
SWEP.RecoilAltMultiplier = 200

SWEP.RecoilSpreadPenalty = 0.0015
SWEP.HipFireSpreadPenalty = 0.015

// handling

SWEP.MoveSpeedMult = 0.94
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 1

SWEP.AimDownSightsTime = 0.27
SWEP.SprintToFireTime = 0.3

SWEP.Sway = 0.9
SWEP.ScopedSway = 0.25

SWEP.FreeAimMaxAngle = 4

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-135, 0, 45)
SWEP.BlindFireSuicidePos = Vector(25, 19, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -4)

SWEP.SightAng = Angle(0, 1.1, 0)
SWEP.SightPos = Vector(-3.34, -4, -4.6)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 20
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1

SWEP.DropMagazineModel = "models/weapons/tacint/magazines/uzi.mdl"
SWEP.DropMagazineImpact = "pistol"

SWEP.ReloadUpInTime = 1
SWEP.DropMagazineTime = 0.3

// sounds

local path = "tacrp/weapons/uzi/"

SWEP.Sound_Shoot = "^" .. path .. "fire-1.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1

SWEP.MuzzleEffect = "muzzleflash_smg"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire1"] = "shoot1",
    ["fire2"] = "shoot2",
    ["fire3"] = "shoot3",
    ["fire4"] = "shoot4",
    ["fire5"] = "shoot5",
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2", "blind_shoot3"},
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.5, -0.6),
    vm_ang = Angle(0, 2, 0),
    t = 0.2,
    tmax = 0.2,
    bones = {
        {
            bone = "xd45_rig.slide",
            pos = Vector(0, 0, -3),
            t0 = 0,
            t1 = 0.1,
        },
        {
            bone = "xd45_rig.hammer",
            ang = Angle(-15, 0, 0),
            t0 = 0,
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

SWEP.ShootTimeMult = 0.5

SWEP.LastShot = true
SWEP.NoIdle = true

// attachments

SWEP.AttachmentElements = {
    ["foldstock"] = {
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
        Category = "optic_pistol",
        Bone = "xd45_rig.xd45_ROOT",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(-3.7, 0, -2.5),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, -1, -1),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "xd45_rig.barrel",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        VMScale = 0.75,
        WMScale = 0.75,
        Pos_VM = Vector(-0.18, 0, 13),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 8, -1.5),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "xd45_rig.xd45_ROOT",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        VMScale = 1.1,
        WMScale = 1.3,
        Pos_VM = Vector(-2.5, 0.7, 6.5),
        Ang_VM = Angle(90, 0, 90),
        Pos_WM = Vector(0, 5, -2.75),
        Ang_WM = Angle(0, -90, 180),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_foldstock", "acc_extmag_smg","acc_holster"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_auto"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
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

addsound("tacint_uzi.insert_clip", path .. "insert_clip.wav")
addsound("tacint_uzi.remove_clip", path .. "remove_clip.wav")
addsound("tacint_uzi.bolt_action", path .. "bolt_action.wav")
addsound("tacint_uzi.foldingstock_back", path .. "foldingstock_back.wav")