SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Lee-Enfield Mk III*"
SWEP.AbbrevName = "Lee-Enfield"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "6Marksman Rifle"

SWEP.Description = "Mass production British bolt-action rifle with high capacity."
SWEP.Description_Quote = "\"It was all so easy.\"" // T.E. Lawrence
SWEP.Trivia_Caliber = ".303 British"
SWEP.Trivia_Manufacturer = "Royal Small Arms Factory"
SWEP.Trivia_Year = "1907"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Assets: Cry of Fear
Animations: Cry of Fear, Lazarus
]]

SWEP.ViewModel = "models/weapons/tacint_extras/v_smle.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_smle.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 72,
        Damage_Min = 42,

        RPM = 52,
        ShootTimeMult = 0.69,
        HipFireSpreadPenalty = 0.03,
        Spread = 0.004,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1.25,
            [HITGROUP_LEFTARM] = 0.75,
            [HITGROUP_RIGHTARM] = 0.75,
            [HITGROUP_LEFTLEG] = 0.5,
            [HITGROUP_RIGHTLEG] = 0.5,
            [HITGROUP_GEAR] = 0.5
        },
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 55,
        Damage_Min = 30,
        Range_Min = 750,
        Range_Max = 3000,

        RPM = 40,
        ShootTimeMult = 0.9,
        Spread = 0.001,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 4,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.75,
            [HITGROUP_RIGHTARM] = 0.75,
            [HITGROUP_LEFTLEG] = 0.5,
            [HITGROUP_RIGHTLEG] = 0.5,
            [HITGROUP_GEAR] = 0.5
        },
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.SniperRifle

// "ballistics"

SWEP.Damage_Max = 68
SWEP.Damage_Min = 34
SWEP.Range_Min = 300
SWEP.Range_Max = 2800
SWEP.Penetration = 10
SWEP.ArmorPenetration = 0.8
SWEP.ArmorBonus = 1

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.75,
    [HITGROUP_RIGHTARM] = 0.75,
    [HITGROUP_LEFTLEG] = 0.5,
    [HITGROUP_RIGHTLEG] = 0.5,
    [HITGROUP_GEAR] = 0.5
}

SWEP.MuzzleVelocity = 30000

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Bolt-Action" // only used externally for firemode name distinction

SWEP.RPM = 50

SWEP.Spread = 0.0075 // WW2 rifles weren't all that accurate...

SWEP.HipFireSpreadPenalty = 0.04
SWEP.PeekPenaltyFraction = 0.2

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 1
SWEP.RecoilResetTime = 0.2
SWEP.RecoilDissipationRate = 1
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 5

SWEP.RecoilKick = 5

SWEP.RecoilSpreadPenalty = 0 // extra spread per one unit of recoil

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.55

SWEP.ReloadSpeedMult = 0.3

SWEP.AimDownSightsTime = 0.34
SWEP.SprintToFireTime = 0.4

SWEP.Sway = 1
SWEP.ScopedSway = 0.1

SWEP.FreeAimMaxAngle = 7

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeNPC = "shotgun"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(0, 2, 0)
SWEP.PassivePos = Vector(1.25, 4.5, -0.5)

SWEP.BlindFireAng = Angle(0, 15, -45)
SWEP.BlindFirePos = Vector(1, -2, -3)

SWEP.BlindFireLeftAng = Angle(75, 0, 0)
SWEP.BlindFireLeftPos = Vector(8, 10, -6)

SWEP.BlindFireRightAng = Angle(-75, 0, 0)
SWEP.BlindFireRightPos = Vector(-10, 10, -5)

SWEP.BlindFireSuicideAng = Angle(0, 135, 0)
SWEP.BlindFireSuicidePos = Vector(-2, 45, -35)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(2, 4.5, 0.75)

SWEP.SightAng = Angle(0, 0, -0.1)
SWEP.SightPos = Vector(-2.3, 1, 1.95)

SWEP.CustomizePos = Vector(4, 3, -1.5)
SWEP.CustomizeAng = Angle(30, 15, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 4, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// scope

SWEP.Scope = true
SWEP.ScopeFOV = 90 / 1.25

// reload

SWEP.ClipSize = 10
SWEP.Ammo = "ar2"
SWEP.Ammo_Expanded = "ti_rifle"

SWEP.ShotgunReload = true
SWEP.ShotgunThreeload = false
SWEP.ShotgunFullCancel = true
SWEP.ShotgunNoReverseStart = true

SWEP.ReloadTimeMult = 0.85
SWEP.ShootTimeMult = 0.72
SWEP.DropMagazineModel = false

SWEP.ShotgunLoadInTime = 0
SWEP.BulletBodygroups = {}

// sounds

// local path = "TacRP/weapons/spr/"
local path1 = "tacint_extras/smle/"

SWEP.Sound_Shoot = "^" .. path1 .. "rifle_fire.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/ak47/ak47_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.EjectEffect = 2
SWEP.EjectDelay = 0.7

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire"] = "shoot1",
    ["blind_fire"] = "shoot1",
    ["reload"] = "reload_insert",
    ["reload_finish"] = "reload_end",
    ["melee"] = "melee",
    ["dryfire"] = "shoot_noshot",
    ["jam"] = "reload_end"
}

// attachments

SWEP.AttachmentElements = {
    ["scope"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1},
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = "optic_smle",
        WMBone = "Bone02",
        Bone = "rifle",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 0.8,
        Pos_VM = Vector(0.01, 0, 2),
        Ang_VM = Angle(0, -90, 0),
        Pos_WM = Vector(0, 1.25, -5.6),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        WMBone = "Bone02",
        Bone = "rifle",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 0.75,
        WMScale = 0.75,
        Pos_VM = Vector(-0.02, 27.25, 0.8),
        Pos_WM = Vector(24.75, 1., -4.75),
        Ang_VM = Angle(0, -90, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom"},
        WMBone = "Bone02",
        Bone = "rifle",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(0.5, 11, 0.5),
        Pos_WM = Vector(8, 1.8, -4),
        Ang_VM = Angle(0, -90, -90),
        Ang_WM = Angle(0, 0, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "acc_bipod"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
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

addsound("tacint_smle.CockBack", path1 .. "rifle_cock_back.wav")
addsound("tacint_smle.CockForward", path1 .. "rifle_cock_forward.wav")
addsound("tacint_smle.InsertShell", path1 .. "rifle_insert.wav")