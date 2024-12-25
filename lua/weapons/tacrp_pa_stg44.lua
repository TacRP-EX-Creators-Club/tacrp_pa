SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Sturmgewehr 44"
SWEP.AbbrevName = "Stg-44"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "4Assault Rifle"

SWEP.Description = "Vintage assault rifle, considered by many to be the first of its kind. Somewhat powerful but prone to malfunctions."
SWEP.Description_Quote = "\"Mein carbine did not kill you? I will use gas! More gas!\"" // Killing Floor 2

SWEP.Trivia_Caliber = "7.92x33mm Kurz"
SWEP.Trivia_Manufacturer = "C.G. Haenel"
SWEP.Trivia_Year = "1943"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Model/Texture: Tuuttipingu
Sounds: 
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_stg44.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_stg44.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 30,
        Damage_Min = 15,
        RecoilKick = 4,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 4,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },

        RPM = 550,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 14,
        Damage_Min = 10,
        Range_Min = 600,
        Range_Max = 2000,
        RPM = 520,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AssaultRifle

// "ballistics"

SWEP.Damage_Max = 28
SWEP.Damage_Min = 11
SWEP.Range_Min = 1000 // distance for which to maintain maximum damage
SWEP.Range_Max = 2800 // distance at which we drop to minimum damage
SWEP.Penetration = 8 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.775

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 19000

// misc. shooting

SWEP.Firemodes = {2, 1}

SWEP.RPM = 520

SWEP.JamFactor = 0.01

SWEP.Spread = 0.0065

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 8
SWEP.RecoilResetTime = 0.02
SWEP.RecoilDissipationRate = 32
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 5
SWEP.RecoilStability = 0.4

SWEP.RecoilSpreadPenalty = 0.0025
SWEP.HipFireSpreadPenalty = 0.03

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.65

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.35
SWEP.SprintToFireTime = 0.38

SWEP.FreeAimMaxAngle = 5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5.5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-0.74, 0.3, 0)
SWEP.SightPos = Vector(-4.25, -7.5, -4)

SWEP.CorrectivePos = Vector(0, 0, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

SWEP.Sway = 1.25
SWEP.ScopedSway = 0.15

// reload

SWEP.ClipSize = 30
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/stg44.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.7
SWEP.DropMagazineTime = 0.6

// sounds

local path = "tacint_shark/stg44/"

SWEP.Sound_Shoot = "^" .. path .. "sg552-1.wav"
SWEP.Sound_Shoot_Silenced = "tacrp/weapons/sg551/sg551_fire_silenced-1.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.EjectEffect = 2

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "dryfire",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.3, -0.2),
    vm_ang = Angle(0, 0.5, 0),
    t = 0.2,
    tmax = 0.2,
    bones = {
        {
            bone = "ValveBiped.bolt_cover",
            pos = Vector(0, 0, -3),
            t0 = 0.01,
            t1 = 0.1,
        },
    },
}

// attachments

SWEP.AttachmentElements = {
    ["sights"] = {
        BGs_VM = {
            {1, 1},
        },
    },
    ["tactical"] = {
        BGs_VM = {
            {2, 1}
        },
    },
}

SWEP.NoRMR = true


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper"},
        InstalledElements = {"sights"},
        Bone = "ValveBiped.sg551_rootbone",
        WMBone = "ValveBiped.Bip01_R_Hand",
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.75,
        Pos_VM = Vector(-5.1, 0, 2.6),
        Pos_WM = Vector(5, 1.2, -6),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(180, 180, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.sg551_rootbone",
        WMBone = "ValveBiped.Bip01_R_Hand",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
		VMScale = 0.75,
        Pos_VM = Vector(-3.3, -0.05, 25),
        Pos_WM = Vector(32, 1.2, -4.8),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(180, 180, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        InstalledElements = {"tactical"},
        Bone = "ValveBiped.sg551_rootbone",
        WMBone = "ValveBiped.Bip01_R_Hand",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
		VMScale = 0.85,
        Pos_VM = Vector(-4.05, -0.65, 15),
        Pos_WM = Vector(20, 1.5, -4.8),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(180, 180, -90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "perk_extendedmag", "acc_sling", "acc_duffle"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic", "bolt_jammable"},
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

addsound("tacint_stg44.Remove_Clip", path .. "magout.wav")
addsound("tacint_stg44.Insert_Clip", path .. "magin.wav")
addsound("tacint_stg44.Insert_Clip-mid", path .. "magtap.wav")
addsound("tacint_stg44.bolt_action", path .. "boltrelease.wav")
addsound("tacint_stg44.bolt_shut", path .. "boltrelease.wav")
addsound("tacint_stg44.bolt_back", path .. "boltpull.wav")
addsound("tacint_stg44.throw_catch", "tacrp/weapons/sg551/sg551_throw_catch.wav")
addsound("tacint_stg44.fire_selector", "tacrp/weapons/sg551/sg551_fire_selector.wav")