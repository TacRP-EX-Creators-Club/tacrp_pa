SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Hi-Point 995"
SWEP.AbbrevName = "Hi-Point"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "5Sporter"

SWEP.Description = "Popular semi-automatic pistol-caliber carbine. Cheap and reliable, but not all that powerful."
SWEP.Description_Quote = "\"Good wombs have borne bad sons.\""

SWEP.Trivia_Caliber = "9x19mm"
SWEP.Trivia_Manufacturer = "Hi-Point Firearms"
SWEP.Trivia_Year = "1998"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = "Model: Yumyumshisha\nAnimations: Tactical Intervention\nPorted By: Arctic"

SWEP.ViewModel = "models/weapons/tacint/v_hipoint.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_hipoint.mdl"

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
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachinePistol

// "ballistics"

SWEP.Damage_Max = 20
SWEP.Damage_Min = 10
SWEP.Range_Min = 1800
SWEP.Range_Max = 4000
SWEP.Penetration = 4
SWEP.ArmorPenetration = 0.6
SWEP.ArmorBonus = 0.5

SWEP.MuzzleVelocity = 17000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 420
SWEP.RPMMultSemi = 0.8

SWEP.Spread = 0.007

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 5
SWEP.RecoilResetTime = 0.02
SWEP.RecoilDissipationRate = 15
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 2.0
SWEP.RecoilKick = 2.5
SWEP.RecoilStability = 0.65
SWEP.RecoilAltMultiplier = 200

SWEP.RecoilSpreadPenalty = 0.0015
SWEP.HipFireSpreadPenalty = 0.03

// handling

SWEP.MoveSpeedMult = 0.92
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 0.75

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.27
SWEP.SprintToFireTime = 0.3

SWEP.Sway = 1
SWEP.ScopedSway = 0.15

SWEP.FreeAimMaxAngle = 4

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -6, -5.5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -5)

SWEP.BlindFireSuicideAng = Angle(0, 145, 130)
SWEP.BlindFireSuicidePos = Vector(-6, 32, -26)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -4)

SWEP.SightAng = Angle(0.23, 0.2, 0)
SWEP.SightPos = Vector(-3.19, -10, -3.88)

SWEP.CorrectivePos = Vector(0.05, 0, 0.125)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 10
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1.3

SWEP.DropMagazineModel = "models/weapons/tacint/magazines/p2000.mdl"
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
    ["fire_iron"] = "fire1_M",
    ["deploy"] = "unholster",
    ["fire1"] = {"fire1_M", "fire1_L"},
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = {"fire4_M", "fire4_L", "fire4_R"},
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.5, -0.1),
    vm_ang = Angle(0, 0.25, 0),
    t = 0.2,
    tmax = 0.2,
    bones = {
        // charging handle
        {
            bone = "ValveBiped.bolt_handle",
            pos = Vector(0, 0, -2),
            t0 = 0,
            t1 = 0.1
        }
    }
}

SWEP.ShootTimeMult = 0.5

// attachments

SWEP.AttachmentElements = {
    ["optic"] = {
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
        Category = {"optic_cqb_nookp7", "optic_medium"},
        Bone = "ValveBiped.uzi_rootbone",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        InstalledElements = {"optic"},
        Pos_VM = Vector(-4.8, -0.60, 2.75),
        Pos_WM = Vector(7, 1.5, -5.5),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.uzi_rootbone",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(-3.25, -0.7, 27),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(18, 1.2, -3.8),
        Ang_WM = Angle(0, 0, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.uzi_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(-1.7, -0.7, 19),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(11, 1.2, -2.5),
        Ang_WM = Angle(0, 0, 0),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_smg", "acc_sling", "acc_duffle"},
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
        Category = {"trigger_semi"},
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