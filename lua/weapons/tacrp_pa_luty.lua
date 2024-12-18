SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Luty SMG"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "3Submachine Gun"

SWEP.Description = "Homemade SMG made as protest against UK firearm regulations. The first few shots in a burst have increased firerate, compensating for the weapon's terrible accuracy."
SWEP.Description_Quote = "\"Let us never succumb to the evil doctrine of the antigun movement.\"" // From P.A. Luty's book, Expedient Homemade Firearms. Guy was quite dramatic.

SWEP.Trivia_Caliber = "9x19mm"
SWEP.Trivia_Manufacturer = "P.A. Luty"
SWEP.Trivia_Year = "1998"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = "Model/Texture: Vasily\nSound: New World Interactive, Firearms: Source\nAssets: Tactical Intervention"

SWEP.ViewModel = "models/weapons/tacint_extras/v_luty.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_luty.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 26,
        Damage_Min = 10,
        Range_Min = 500,
        Range_Max = 1200,
        Spread = 0.012,
        JamFactor = 0.02,
        ClipSize = 18,
        RPM = 450,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 20,
        Damage_Min = 10,
        Range_Min = 300,
        Range_Max = 900,
        Spread = 0.01,
        JamFactor = 0.02,
        RPM = 400,
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.SMG

// "ballistics"

SWEP.Damage_Max = 20
SWEP.Damage_Min = 8
SWEP.Range_Min = 300 // distance for which to maintain maximum damage
SWEP.Range_Max = 1200 // distance at which we drop to minimum damage
SWEP.Penetration = 3 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.5
SWEP.ArmorBonus = 0.5

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.85,
    [HITGROUP_RIGHTLEG] = 0.85,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 10000

// misc. shooting

SWEP.Firemodes = {2}

SWEP.RPM = 420
SWEP.JamFactor = 0.05

SWEP.Spread = 0.016

SWEP.ShootTimeMult = 0.7

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 8
SWEP.RecoilResetTime = 0.03
SWEP.RecoilDissipationRate = 55
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 1

SWEP.RecoilKick = 5
SWEP.RecoilStability = 0
SWEP.RecoilAltMultiplier = 100

SWEP.RecoilSpreadPenalty = 0.003
SWEP.HipFireSpreadPenalty = 0.012

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.94
SWEP.ShootingSpeedMult = 0.8
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.3
SWEP.SprintToFireTime = 0.34

SWEP.Sway = 0.8
SWEP.ScopedSway = 0.5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -4)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0.05, 0, 0)
SWEP.SightPos = Vector(-4.64, -3, -1.87)

SWEP.CorrectivePos = Vector(0, 0, -0.05)
SWEP.CorrectiveAng = Angle(0.75, 0.7, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, -2, -6)
SWEP.HolsterAng = Angle(0, 0, 0)


SWEP.ClipSize = 16
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/luty.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.65
SWEP.DropMagazineTime = 0.65

SWEP.FreeAimMaxAngle = 4

// sounds

local path = "tacrp/weapons/ak47/ak47_"
local path1 = "tacint_extras/luty/"

SWEP.Sound_Shoot = "^" .. path1 .. "tmp-1.wav"

SWEP.Vol_Shoot = 110
SWEP.Pitch_Shoot = 98
SWEP.ShootPitchVariance = 0 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.EjectEffect = 1

// anims
SWEP.NoIdle = true
SWEP.LastShot = true
SWEP.DeployTimeMult = 1.75

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "fire1_M",
    ["deploy"] = "unholster",
    ["fire1"] = {"fire1_L", "fire1_M", "fire1_R"},
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = {"fire5_M", "fire5_L", "fire5_R"},
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "mid_reload"
}

// attachments

SWEP.AttachmentElements = {
    ["tactical"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.4, -0.3),
    vm_ang = Angle(0, 0.5, 0),
    t = 0.2,
    tmax = 0.2,
    bones = {
        {
            bone = "ValveBiped.bolt",
            pos = Vector(0, 0, 2),
            t0 = 0.03,
            t1 = 0.1,
        },
    },
}

SWEP.NoRMR = false

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb_nookp7", "optic_medium"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        InstalledElements = {"tactical"},
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.75,
        Pos_VM = Vector(-4.5, 0.15, 2.5),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 1, 0),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "barrel",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical_zoom", "tactical_ebullet"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "acc_extmag_pistol2"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
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

addsound("tacint_luty.remove_clip", path1 .. "magout.wav")
addsound("tacint_luty.insert_clip", path1 .. "magin.wav")
addsound("tacint_luty.boltaction", path1 .. "boltback.wav")
addsound("tacint_luty.Buttstock_Back", path .. "buttstock_back.wav")

local factor = 4

SWEP.Func_RPM = function(wep, data)
    // data.mul = data.mul * Lerp((wep:GetRecoilAmount() / factor) ^ 2, 1.75, 1)
    data.add = 380 * Lerp((wep:GetRecoilAmount() / factor) ^ 2, 1, 0)
end

SWEP.Func_Pitch_Shoot = function(wep, data)
    data.mul = data.mul * Lerp((wep:GetRecoilAmount() / factor) ^ 2, 1.075, 1)
end

SWEP.Func_ShootTimeMult = function(wep, data)
    data.mul = data.mul * Lerp((wep:GetRecoilAmount() / factor) ^ 2, 0.5, 1)
end
