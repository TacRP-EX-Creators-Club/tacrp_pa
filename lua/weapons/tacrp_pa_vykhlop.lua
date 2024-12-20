SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "VKS Vykhlop"
SWEP.AbbrevName = "Vykhlop"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "7Sniper Rifle"

SWEP.Description = "Subsonic sniper rifle with high capacity and rate of fire, but low muzzle velocity and poor handling.\nEquipped with a 6x scope by default."
SWEP.Description_Quote = "Na'am seyidi, al qanas ala al khatt."

SWEP.Trivia_Caliber = "12.7x55mm"
SWEP.Trivia_Manufacturer = "TsKIB SOO"
SWEP.Trivia_Year = "2002"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = "Model/Texture: Call to Arms\nAnimations: Tactical Intervention, Arctic"

SWEP.ViewModel = "models/weapons/tacint/v_vykhlop.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_vykhlop.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 75,
        Damage_Min = 120,

        Range_Min = 1500,
        Range_Max = 4000,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 55,
        Damage_Min = 80,
        Range_Min = 300,
        Range_Max = 2000,
        RPM = 45,
        ShootTimeMult = 0.9,
        HipFireSpreadPenalty = 0.025,
        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 5,
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

SWEP.Damage_Max = 125
SWEP.Damage_Min = 85
SWEP.Range_Min = 800
SWEP.Range_Max = 5000
SWEP.Penetration = 18 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.8
SWEP.ArmorBonus = 2.5

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

SWEP.MuzzleVelocity = 11500

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Bolt-Action" // only used externally for firemode name distinction

SWEP.RPM = 44
SWEP.ShootTimeMult = 0.42

SWEP.Spread = 0

SWEP.HipFireSpreadPenalty = 0.1
SWEP.PeekPenaltyFraction = 0.2

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 1
SWEP.RecoilResetTime = 0.4
SWEP.RecoilDissipationRate = 1
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 10
SWEP.RecoilKick = 15
SWEP.RecoilStability = 0.5

SWEP.RecoilSpreadPenalty = 0 // extra spread per one unit of recoil

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.75
SWEP.ShootingSpeedMult = 0.25
SWEP.SightedSpeedMult = 0.4

SWEP.ReloadSpeedMult = 0.25

SWEP.AimDownSightsTime = 0.5
SWEP.SprintToFireTime = 0.6

SWEP.Sway = 3
SWEP.ScopedSway = 0.2

SWEP.FreeAimMaxAngle = 10

SWEP.Bipod = true
SWEP.BipodRecoil = 0.25
SWEP.BipodKick = 0.2

// hold types

SWEP.HoldType = "smg"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeNPC = "shotgun"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_AR2

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(2, 1, -6)

SWEP.BlindFireAng = Angle(0, 15, -45)
SWEP.BlindFirePos = Vector(1, -2, -3)

SWEP.BlindFireLeftAng = Angle(75, 0, 0)
SWEP.BlindFireLeftPos = Vector(8, 10, -6)

SWEP.BlindFireRightAng = Angle(-75, 0, 0)
SWEP.BlindFireRightPos = Vector(-10, 10, -5)

SWEP.BlindFireSuicideAng = Angle(0, 135, 0)
SWEP.BlindFireSuicidePos = Vector(-2, 45, -35)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0.03, 0.8, 0)
SWEP.SightPos = Vector(-3.92, -4, -4.77)

SWEP.CorrectivePos = Vector(0.09, 0, 0.05)
SWEP.CorrectiveAng = Angle(0, 0, -1)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 4, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// scope

SWEP.Scope = true
SWEP.ScopeOverlay = Material("tacrp/scopes/l96.png", "mips smooth") // Material("path/to/overlay")
SWEP.ScopeFOV = 90 / 6
SWEP.ScopeLevels = 1 // 2 = like CS:S
SWEP.ScopeHideWeapon = true

// reload

SWEP.ClipSize = 10
SWEP.Ammo = "357"
SWEP.AmmoTTT = "357"
SWEP.Ammo_Expanded = "ti_sniper"

SWEP.TracerNum = 0

SWEP.ReloadTimeMult = 2
SWEP.ShootTimeMult = 0.8
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/vykhlop.mdl"

SWEP.ReloadUpInTime = 2.1
SWEP.DropMagazineTime = 0.7

// sounds

local path = "tacrp/weapons/aug/aug_"

SWEP.Sound_Shoot = "^tacrp/weapons/sg551/sg551_fire_silenced-1.wav"

SWEP.Vol_Shoot = 80
SWEP.Pitch_Shoot = 80
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.EjectEffect = 2
SWEP.EjectDelay = 0.5

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "deploy",
    ["fire"] = "fire_bolt",
    ["blind_fire"] = "shoot1",
    ["jam"] = "midreload"
}

// attachments

SWEP.AttachmentElements = {
    ["optic"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
    ["irons"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {2, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"ironsights_sniper", "optic_cqb_nookp7", "optic_medium", "optic_sniper"},
        InstalledElements = {"optic"},
        Bone = "ValveBiped.AUG_rootbone",
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 1,
        Pos_VM = Vector(-5.3, 0, 1),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(4, 1, -5.8),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.AUG_rootbone",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-3, -1.05, 8),
        Ang_VM = Angle(90, 0, -90),
        Pos_WM = Vector(12, 1.75, -4),
        Ang_WM = Angle(0, 0, 90),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_sniper", "acc_sling", "acc_duffle", "acc_bipod"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Trigger",
        Category = {"trigger_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_amr"},
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

addsound("tacint_aug.insert_clip", path .. "insert_clip.wav")
addsound("tacint_aug.remove_clip", path .. "remove_clip.wav")
addsound("tacint_aug.Handle_FoldDown", path .. "handle_folddown.wav")
addsound("tacint_aug.bolt_lockback", path .. "bolt_lockback.wav")
addsound("tacint_aug.bolt_release", path .. "bolt_release.wav")

path = "TacRP/weapons/m14/m14_"

addsound("TacInt_m14.bolt_back", path .. "bolt_back.wav")
addsound("TacInt_m14.bolt_release", path .. "bolt_release.wav")