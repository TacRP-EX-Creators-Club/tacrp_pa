SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "PPSh-41"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "3Submachine Gun"

SWEP.Description = "Soviet SMG with a high fire rate and suitably massive but unreliable drum magazine. Accuracy is non-existent and very much optional."
SWEP.Description_Quote = "Ура!"

SWEP.Trivia_Caliber = "7.62x25mm Tokarev"
SWEP.Trivia_Manufacturer = "Various"
SWEP.Trivia_Year = "1941"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Model: Tripwire Interactive
Textures: Rus_Ivan
Animations: Tactical Intervention, edited by speedonerd
Sounds: Rus_Ivan
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_ppsh.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_ppsh.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {

    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.SMG

// "ballistics"

SWEP.Damage_Max = 18 // damage at minimum range
SWEP.Damage_Min = 7 // damage at maximum range
SWEP.Range_Min = 500 // distance for which to maintain maximum damage
SWEP.Range_Max = 1500 // distance at which we drop to minimum damage
SWEP.Penetration = 5 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.75
SWEP.ArmorBonus = 0.5

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

SWEP.MuzzleVelocity = 27000

// misc. shooting

SWEP.Firemodes = {2, 1}

SWEP.RPM = 900

SWEP.Spread = 0.016

SWEP.JamFactor = 0.015

SWEP.ShootTimeMult = 0.5

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 20
SWEP.RecoilResetTime = 0
SWEP.RecoilDissipationRate = 60

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 3.5
SWEP.RecoilStability = 0.25
SWEP.RecoilAltMultiplier = 100

SWEP.RecoilSpreadPenalty = 0.0018
SWEP.HipFireSpreadPenalty = 0.03
SWEP.PeekPenaltyFraction = 0.1

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.5
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.25

SWEP.AimDownSightsTime = 0.32
SWEP.SprintToFireTime = 0.3

SWEP.Sway = 1.5
SWEP.ScopedSway = 0.25

SWEP.FreeAimMaxAngle = 5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -4.5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(7, -3, -2)

SWEP.SprintMidPoint = {
    Pos = Vector(4, 5, 2),
    Ang = Angle(0, -2, -45)
}

SWEP.SightAng = Angle(0.01, 1.2, 0)
SWEP.SightPos = Vector(-3.79, -7.5, -2.7)

SWEP.CorrectivePos = Vector(0.025, -7.5, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// scope

SWEP.Scope = true
SWEP.ScopeOverlay = false
SWEP.ScopeFOV = 90 / 1.1
SWEP.ScopeLevels = 1 // 2 = like CS:S
SWEP.ScopeHideWeapon = false

// reload

SWEP.ClipSize = 71
SWEP.Ammo = "pistol"
SWEP.Ammo_Expanded = "ti_pistol_heavy"

SWEP.ReloadTimeMult = 1.25
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/ppsh.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.85
SWEP.DropMagazineTime = 0.5

// sounds

local path = "tacint_shark/ppsh/p90"

SWEP.Sound_Shoot = "^" .. path .. "-1.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/g36k/g36k_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.EjectEffect = 2

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "shoot2",
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2"},
    ["melee"] = "melee2",
    ["blind_fire"] = "blind_shoot1"
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.75, -0.12),
    vm_ang = Angle(0, 0.3, 0),
    t = 0.25,
    tmax = 0.25,
    bones = {
        {
            bone = "ValveBiped.bolt_handle",
            pos = Vector(0, 0, 3),
            t0 = 0.05,
            t1 = 0.2,
        },
    },
}

// attachments

SWEP.AttachmentElements = {
    ["sights"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
}

SWEP.NoRMR = true

SWEP.Attachments = {
    [1] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_ebullet"},
        Bone = "ValveBiped.m14_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-2.1, 0.25, 20),
        Pos_WM = Vector(20, 0.3, -9.2),
        Ang_VM = Angle(90, 0, 180),
        Ang_WM = Angle(-22.5, 5, 0),
    },
    [2] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "acc_bipod"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic", "bolt_jammable"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_sniper"},
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

addsound("tacint_ppsh.remove_clip", path .. "_clipout.wav")
addsound("tacint_ppsh.insert_clip", path .. "_clipin.wav")
addsound("tacint_ppsh.tap_clip", path .. "_cliprelease.wav")
addsound("tacint_ppsh.bolt_back", path .. "_boltpull.wav")
addsound("tacint_ppsh.safety", "TacRP/weapons/m14/m14_safety.wav")
