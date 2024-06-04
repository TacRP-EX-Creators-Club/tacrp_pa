SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Lewis Gun"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "5Machine Gun"

SWEP.Description = "Pan-fed, water-cooled light machine gun with a relatively small magazine."
SWEP.Description_Quote = "\"All of you, get out of my way!\""

SWEP.Trivia_Caliber = ".303 British"
SWEP.Trivia_Manufacturer = "Lewis Automatic Machine Gun Company"
SWEP.Trivia_Year = "1911"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = "Model & Texture: Verdun\nAnimation: Tactical Intervention\nPorted By: Arctic"

SWEP.ViewModel = "models/weapons/tacint/v_lewis.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_lewis.mdl"

SWEP.ViewModelFOV = 55

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 40,
        Damage_Min = 28,
        Spread = 0.008,
    },
    [TacRP.BALANCE_TTT] = {

        Damage_Max = 20,
        Damage_Min = 12,
        Range_Min = 750,
        Range_Max = 3000,
        ClipSize = 200,

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
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachineGun

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

// "ballistics"

SWEP.Damage_Max = 30
SWEP.Damage_Min = 20
SWEP.Range_Min = 1800
SWEP.Range_Max = 3200
SWEP.Penetration = 12
SWEP.ArmorPenetration = 0.8

SWEP.MuzzleVelocity = 16000

// misc. shooting

SWEP.Firemode = 2

SWEP.RPM = 550

SWEP.Spread = 0.012

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 20
SWEP.RecoilResetTime = 0.2
SWEP.RecoilDissipationRate = 25
SWEP.RecoilFirstShotMult = 1.5

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 6
SWEP.RecoilAltMultiplier = 150
SWEP.RecoilStability = 0.25

SWEP.HipFireSpreadPenalty = 0.05
SWEP.MoveSpreadPenalty = 0.015
SWEP.RecoilSpreadPenalty = 0.00025
SWEP.PeekPenaltyFraction = 0.2

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.8
SWEP.ShootingSpeedMult = 0.5
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.25
SWEP.ReloadSpeedMultTime = 1

SWEP.AimDownSightsTime = 0.54
SWEP.SprintToFireTime = 0.65

SWEP.Sway = 2
SWEP.ScopedSway = 0.5

SWEP.FreeAimMaxAngle = 10

SWEP.Bipod = true
SWEP.BipodRecoil = 0.25
SWEP.BipodKick = 0.25

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(1, -2, -7)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -4, -3)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-0, 0, 0)
SWEP.SightPos = Vector(-3.72, -5, -4.25)

SWEP.CorrectivePos = Vector(0.025, 0, 0.125)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 47
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 1.4
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/lewis.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 2
SWEP.DropMagazineTime = 0.7

SWEP.DefaultBodygroups = "000000000000000000000000000"

// sounds

local path = "tacrp/weapons/p90/"
local path1 = "tacint_extras/fnmag/"

SWEP.Sound_Shoot = "^" .. path1 .. "fire.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/g36k/g36k_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.Pitch_Shoot = 90
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.EjectEffect = 2

// anims

SWEP.DeployTimeMult = 2
SWEP.HolsterTimeMult = 2.5

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "fire2_M",
    ["fire1"] = "fire1_L",
    ["fire2"] = "fire2_R",
    ["fire3"] = "fire3_R",
    ["fire4"] = "fire4_R",
    ["fire5"] = "fire5_R",
    ["melee"] = {"melee1", "melee2"}
}

// attachments

SWEP.AttachmentElements = {
    ["bipod"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
    ["mount"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {2, 1}
        },
    }
}

//ValveBiped.MG4_root

SWEP.NoTactical = true

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = "optic_cqb",
        Bone = "p90_root",
        InstalledElements = {"mount"},
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 1.1,
        Pos_VM = Vector(-6.5, 0.12, 2.5),
        Pos_WM = Vector(3.5, 1.15, -8),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical_zoom", "tactical_ebullet"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_duffle", "acc_bipod", "acc_sling"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
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

addsound("tacint_lewis.Clip_Out", path .. "clip_out.wav")
addsound("tacint_lewis.Clip_In", path .. "clip_in.wav")
addsound("tacint_lewis.Clip_slap", path .. "clip_slap.wav")
addsound("tacint_lewis.bolt_release", path .. "bolt_release.wav")
addsound("tacint_lewis.bolt_back", path .. "bolt_back.wav")
addsound("tacint_lewis.bolt_forward", path .. "bolt_forward.wav")
addsound("tacint_lewis.fire_select", path .. "fire_select.wav")
addsound("tacint_lewis.mag_release", path .. "mag_release.wav")