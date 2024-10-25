SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "LDP Kommando"
SWEP.AbbrevName = "LDP"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "3Submachine Gun"

SWEP.Description = "Crude pistol-carbine from Rhodesia, intended for personal defense. Despite being classed as an SMG, it is semi-auto only."
SWEP.Description_Quote = ""

SWEP.Trivia_Caliber = "9x19mm"
SWEP.Trivia_Manufacturer = "Lacoste Engineering"
SWEP.Trivia_Year = "1975"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Assets: Military Conflict: Vietnam
Animations: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_ldpkommando.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_uzi_b.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 25,
        Damage_Min = 14,
        HipFireSpreadPenalty = 0.01,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 20,
        Damage_Min = 10,
        Range_Min = 500,
        Range_Max = 1800,
        RPM = 500,

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
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachinePistol

// "ballistics"

SWEP.Damage_Max = 22
SWEP.Damage_Min = 10
SWEP.Range_Min = 700
SWEP.Range_Max = 2200
SWEP.Penetration = 3
SWEP.ArmorPenetration = 0.525
SWEP.ArmorBonus = 0.5

SWEP.MuzzleVelocity = 15000

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

SWEP.Firemode = 1

SWEP.RPM = 400

SWEP.Spread = 0.009

SWEP.JamFactor = 0.04

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 14
SWEP.RecoilResetTime = 0.02
SWEP.RecoilDissipationRate = 33
SWEP.RecoilFirstShotMult = 1.5

SWEP.RecoilVisualKick = 0.75
SWEP.RecoilKick = 2
SWEP.RecoilStability = 0.5
SWEP.RecoilAltMultiplier = 300

SWEP.RecoilSpreadPenalty = 0.0013
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
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, 0, -5.6)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-135, 0, 45)
SWEP.BlindFireSuicidePos = Vector(25, 19, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -4)

SWEP.SightAng = Angle(0.29, 0.1, 0)
SWEP.SightPos = Vector(-3.52, -4, -3.8)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 32
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1.3

SWEP.DropMagazineModel = "models/weapons/tacint/magazines/uzi.mdl"
SWEP.DropMagazineImpact = "pistol"

SWEP.ReloadUpInTime = 1
SWEP.DropMagazineTime = 0.3

// sounds

local path = "tacint_shark/ldpkommando/ldp_"

SWEP.Sound_Shoot = "^" .. path .. "fire1.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire2.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.EjectEffect = 1

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "fire1_M",
    ["deploy"] = "unholster",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire1_M",
    ["fire3"] = "fire2_M",
    ["fire4"] = "fire3_M",
    ["fire5"] = {"fire4_M", "fire4_R"},
    ["melee"] = {"melee1", "melee2"}
}

SWEP.DeployTimeMult = 2

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.5, -0.1),
    vm_ang = Angle(0, 0.25, 0),
    t = 0.2,
    tmax = 0.2,
}

SWEP.ShootTimeMult = 0.75

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
        Bone = "ValveBiped.uzi_rootbone",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(-4.02, -0.35, 14.7),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(18, 1.2, -3.8),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_foldstock", "acc_sling", "acc_duffle", "acc_extmag_smg"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
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

addsound("tacint_kommando.insert_clip", path .. "magin.wav")
addsound("tacint_kommando.remove_clip", path .. "magout.wav")
addsound("tacint_kommando.bolt_action", path .. "Boltaction.wav")
--addsound("tacint_kommando.foldingstock_back", path .. "foldingstock_back.wav")