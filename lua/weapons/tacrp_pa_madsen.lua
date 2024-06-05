SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Madsen M-50"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "3Submachine Gun"

SWEP.Description = "Cost-effective Danish SMG that's easy to use but has unimpressive firepower. An optic cannot be mounted due to the top charging handle."
SWEP.Description_Quote = "\"Do you renounce Satan... And all his works?\""

SWEP.Trivia_Caliber = "9x19mm"
SWEP.Trivia_Manufacturer = "Dansk Industri Syndikat"
SWEP.Trivia_Year = "1950"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = "Assets: Tactical Intervention"

SWEP.ViewModel = "models/weapons/tacint_extras/v_madsen.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_pdw.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 22,
        Damage_Min = 9,

        RecoilKick = 5,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 16,
        Damage_Min = 13,
        Range_Min = 800,
        Range_Max = 1800,
        RPM = 650,

        RecoilSpreadPenalty = 0.0028,
        HipFireSpreadPenalty = 0.04,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.SMG

// "ballistics"

SWEP.Damage_Max = 16
SWEP.Damage_Min = 8
SWEP.Range_Min = 600 // distance for which to maintain maximum damage
SWEP.Range_Max = 2200 // distance at which we drop to minimum damage
SWEP.Penetration = 3 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.525
SWEP.ArmorBonus = 0.5

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

SWEP.MuzzleVelocity = 15000

// misc. shooting

SWEP.Firemode = 2

SWEP.RPM = 550

SWEP.Spread = 0.01

SWEP.ShootTimeMult = 0.6

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 11
SWEP.RecoilResetTime = 0.02
SWEP.RecoilDissipationRate = 33
SWEP.RecoilFirstShotMult = 1.75

SWEP.RecoilVisualKick = 1.25
SWEP.RecoilKick = 3
SWEP.RecoilStability = 0.1
SWEP.RecoilAltMultiplier = 200

SWEP.RecoilSpreadPenalty = 0.0025
SWEP.HipFireSpreadPenalty = 0.015


SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.94
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.6

SWEP.AimDownSightsTime = 0.27
SWEP.SprintToFireTime = 0.3

SWEP.Sway = 0.9
SWEP.ScopedSway = 0.25

SWEP.FreeAimMaxAngle = 4

// hold types

SWEP.HoldType = "smg"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -4, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -4, -3)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-1, -1.15, 1)
SWEP.SightPos = Vector(-4.8, -7.5, -2.05)

SWEP.CorrectivePos = Vector(0.5, 0, -0.55)
SWEP.CorrectiveAng = Angle(2.4, 0.34, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 32
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/pdw.mdl"
SWEP.DropMagazineImpact = "plastic"

SWEP.ReloadUpInTime = 1.35
SWEP.DropMagazineTime = 0.45

SWEP.LastShot = true

// sounds

local path = "TacRP/weapons/pdw/"

SWEP.Sound_Shoot = "^" .. path .. "fire-1.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.EjectEffect = 1

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "fire1_M",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = {"fire4_M", "fire4_L", "fire4_R"},
    ["melee"] = {"melee1", "melee2"}
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
    ["optic"] = {
        BGs_VM = {
            {2, 1}
        },
    },
    ["tactical"] = {
        BGs_VM = {
            {3, 1}
        },
    },
}

SWEP.Attachments = {
    -- [1] = {
    --     PrintName = "Optic",
    --     Category = {"optic_cqb", "optic_medium"},
    --     Bone = "pdw_ROOT",
    --     AttachSound = "TacRP/weapons/optic_on.wav",
    --     DetachSound = "TacRP/weapons/optic_off.wav",
    --     InstalledElements = {"optic"},
    --     VMScale = 1,
    --     Pos_VM = Vector(-4.8, -0.15, 6),
    --     Pos_WM = Vector(7, 1.5, -6.5),
    --     Ang_VM = Angle(90, 0, 0),
    --     Ang_WM = Angle(0, -3.5, 180),
    -- },
    [1] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "pdw_ROOT",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-2.85, -0.1, 24.5),
        Pos_WM = Vector(24, 2.5, -5),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -3.5, 180),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "pdw_ROOT",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-3.25, 0.5, 11),
        Pos_WM = Vector(14, 1.3, -5),
        Ang_VM = Angle(90, 0, 90),
        Ang_WM = Angle(0, -3.5, -90),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_foldstock", "acc_sling", "acc_duffle", "perk_extendedmag"},
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


addsound("tacint_madsen.clip_out", path .. "clip_out-1.wav")
addsound("tacint_madsen.clip_in", path .. "clip_in-1.wav")
addsound("tacint_madsen.bolt_back", path .. "bolt_back-1.wav")
addsound("tacint_madsen.bolt_shut", path .. "bolt_shut-1.wav")
addsound("tacint_madsen.fire_select", path .. "fire_select-1.wav")
addsound("tacint_madsen.Buttstock_Flip_Open", path .. "buttstock_flip_open-1.wav")
addsound("tacint_madsen.Buttstock_lockdown", path .. "buttstock_lockdown-1.wav")