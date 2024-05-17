SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Remington 700 Obrez"
SWEP.AbbrevName = "Obrez"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "2Magnum Pistol"

SWEP.Description = "Cut-down hunting rifle built by the sidearm-deficient to be a concealable handgun substitute. Modification seriously harms accuracy and ranged performance."
SWEP.Description_Quote = "\"Yippee-yay, I got no weddin' bells for today...\""

SWEP.Trivia_Caliber = ".308 Winchester"
SWEP.Trivia_Manufacturer = "Remington Arms, Bubba"
SWEP.Trivia_Year = "1962"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = "Assets: Bethesda Game Studios\nAnimation: Tactical Intervention\nPorted By: Arctic"

SWEP.ViewModel = "models/weapons/tacint/v_obrez.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_obrez.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 50,
        Damage_Min = 70,

        Range_Min = 500,
        Range_Max = 1500,
    },
    [TacRP.BALANCE_TTT] = {

        Description = "Well rounded hunting rifle with good damage up close.\nEquipped with a 6x scope by default.",

        Damage_Max = 30,
        Damage_Min = 50,
        Range_Min = 300,
        Range_Max = 1500,

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
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 22,
        Damage_Min = 50,

        Range_Min = 500,
        Range_Max = 1750,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.75,
            [HITGROUP_RIGHTARM] = 0.75,
            [HITGROUP_LEFTLEG] = 0.5,
            [HITGROUP_RIGHTLEG] = 0.5,
            [HITGROUP_GEAR] = 0.5
        },
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        HipFireSpreadPenalty = 0.018
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.SniperRifle

// "ballistics"

SWEP.Damage_Max = 105
SWEP.Damage_Min = 60
SWEP.Range_Min = 400
SWEP.Range_Max = 2000
SWEP.Penetration = 10 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.6
SWEP.ArmorBonus = 1.25

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.1,
    [HITGROUP_LEFTARM] = 0.75,
    [HITGROUP_RIGHTARM] = 0.75,
    [HITGROUP_LEFTLEG] = 0.5,
    [HITGROUP_RIGHTLEG] = 0.5,
    [HITGROUP_GEAR] = 0.5
}

SWEP.MuzzleVelocity = 12000

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Bolt-Action" // only used externally for firemode name distinction

SWEP.RPM = 70

SWEP.Spread = 0.004

SWEP.HipFireSpreadPenalty = 0.01
SWEP.PeekPenaltyFraction = 0.25

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 1
SWEP.RecoilResetTime = 0.2
SWEP.RecoilDissipationRate = 1
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 5

SWEP.RecoilKick = 15

SWEP.RecoilSpreadPenalty = 0.05 // extra spread per one unit of recoil

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.975
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.2

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.25

SWEP.Sway = 2
SWEP.ScopedSway = 0.5

SWEP.FreeAimMaxAngle = 9

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeNPC = "shotgun"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_AR2

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(2, -2, -6)

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

SWEP.SightAng = Angle(0.03, 0.4, 0)
SWEP.SightPos = Vector(-2.68, -6.5, -3.05)

SWEP.CorrectivePos = Vector(0.05, 0, 0.2)
SWEP.CorrectiveAng = Angle(-0.36, -0.3, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 4, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 5
SWEP.Ammo = "357"
SWEP.AmmoTTT = "357"

SWEP.ReloadTimeMult = 0.8
SWEP.ShootTimeMult = 0.6
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/uratio.mdl" // why doesn't it have its own mag model?

SWEP.ReloadUpInTime = 2.1 * 0.8
SWEP.DropMagazineTime = 1.4 * 0.8

// sounds

local path = "TacRP/weapons/spr/"

SWEP.Sound_Shoot = "^" .. path .. "fire-1.wav"
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
SWEP.EjectDelay = 0.5

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = "shoot1"
}

// attachments

SWEP.AttachmentElements = {
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_sniper", "acc_sling", "acc_duffle", "acc_bipod"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [2] = {
        PrintName = "Bolt",
        Category = {"bolt_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Trigger",
        Category = {"trigger_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Ammo",
        Category = {"ammo_sniper"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
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

addsound("TacInt_spr.Clip_Out", path .. "clip_out-1.wav")
addsound("TacInt_spr.Clip_In", path .. "clip_in-1.wav")
addsound("TacInt_spr.Bolt_Back", path .. "bolt_back-1.wav")
addsound("TacInt_spr.bolt_forward", path .. "bolt_forward-1.wav")
addsound("TacInt_spr.safety", path .. "safety-1.wav")