SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "PP-9 'Klin'"
SWEP.AbbrevName = "Klin"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "3Machine Pistol"

SWEP.Description = "Simple, lightweight, cheap machine pistol. Somewhat unreliable."

SWEP.Trivia_Caliber = "9x18mm Makarov"
SWEP.Trivia_Manufacturer = "Izhmash"
SWEP.Trivia_Year = "1963"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = "Assets: Tactical Intervention"

SWEP.ViewModel = "models/weapons/tacint/v_klin.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_skorpion.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 18,
        Damage_Min = 10,
        ArmorPenetration = 0.6,

        RecoilKick = 1,

        ClipSize = 30,
        DefaultBodygroups = "0000",
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 9,
        Damage_Min = 5,
        Range_Min = 500,
        Range_Max = 2500,
        RPM = 850,

        ClipSize = 30,
        DefaultBodygroups = "0000",

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2,
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
        Damage_Max = 6,
        Damage_Min = 3,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilMaximum = 10
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachinePistol

// "ballistics"

SWEP.DefaultBodygroups = "0000"

SWEP.Damage_Max = 18
SWEP.Damage_Min = 9
SWEP.Range_Min = 400
SWEP.Range_Max = 1500
SWEP.Penetration = 4 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.5
SWEP.ArmorBonus = 0.75

SWEP.MuzzleVelocity = 13500

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

SWEP.Firemodes = {
    2,
    1
}

SWEP.RPM = 800

SWEP.Spread = 0.009
SWEP.RecoilSpreadPenalty = 0.0014
SWEP.HipFireSpreadPenalty = 0.011

SWEP.JamFactor = 0.2

SWEP.ShootTimeMult = 0.5

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 9
SWEP.RecoilResetTime = 0.01
SWEP.RecoilDissipationRate = 40
SWEP.RecoilFirstShotMult = 1.25

SWEP.RecoilVisualKick = 0.5
SWEP.RecoilKick = 2.5
SWEP.RecoilStability = 0.4

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.975
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.6

SWEP.AimDownSightsTime = 0.275
SWEP.SprintToFireTime = 0.30

SWEP.Sway = 1
SWEP.ScopedSway = 0.3

SWEP.FreeAimMaxAngle = 3

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(-2.5, -1, 0)
SWEP.PassivePos = Vector(0, -2, -4)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-135, 0, 45)
SWEP.BlindFireSuicidePos = Vector(31, 25, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-4.26, -1.3, 1)
SWEP.SightPos = Vector(-5.2, -5, -2.40)

SWEP.CorrectivePos = Vector(1.2, 0, -0.4)
SWEP.CorrectiveAng = Angle(5.5, -2.7, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

// reload

SWEP.ClipSize = 30
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/skorpion.mdl"
SWEP.DropMagazineImpact = "pistol"

SWEP.ReloadUpInTime = 0.9
SWEP.DropMagazineTime = 0.2

// sounds

local path = "TacRP/weapons/skorpion/"

SWEP.Sound_Shoot = "^" .. path .. "fire-1.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 100
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2
SWEP.EjectEffect = 1

SWEP.MuzzleEffect = "muzzleflash_pistol"

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "fire2_M",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = {"fire4_M", "fire4_L", "fire4_R"},
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.3, -0.15),
    vm_ang = Angle(0, 0.5, 0),
    t = 0.1,
    tmax = 0.2,
    bones = {
        {
            bone = "bolt_handle",
            pos = Vector(0, 0, -3),
            t0 = 0,
            t1 = 0.1,
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
            t1 = 0.2,
        },
    },
}

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
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "Skorpion_ROOT",
        WMBone = "Bone02",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 0.6,
        WMScale = 0.7,
        Pos_VM = Vector(3.5, -0.015, 14),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(1.5, 1.25, -4.3),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "Skorpion_ROOT",
        WMBone = "Bone02",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 0.75,
        WMScale = 0.75,
        Pos_VM = Vector(3, 0, 8),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(-4, 1.25, -3.5),
        Ang_WM = Angle(0, 0, 0),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_foldstock", "acc_extmag_smg", "acc_holster"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Trigger",
        Category = {"trigger_auto"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
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

addsound("TacInt_Skorpion.Clip_Out", path .. "clip_out-1.wav")
addsound("TacInt_Skorpion.Clip_In", path .. "clip_in-1.wav")
addsound("TacInt_Skorpion.bolt_action", path .. "bolt_action-1.wav")

addsound("TacInt_pdw.fire_select", "TacRP/weapons/pdw/fire_select-1.wav")