SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Colt Python"
SWEP.AbbrevName = "Python"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "1Elite"
SWEP.SubCatType = "2Magnum Pistol"

SWEP.Description = "Rare revolver with a reputation for accuracy and power. To be fired one-handed; cowboy style."
SWEP.Description_Quote = "\"When you have to shoot, shoot. Don't talk.\""

SWEP.Trivia_Caliber = ".357 Magnum"
SWEP.Trivia_Manufacturer = "Colt"
SWEP.Trivia_Year = "1955"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Model: Aggressive Napkin
Texture: Teh Snake
Sound: Vunsunta, XLongWayHome
Animation: Tactical Intervention]]

SWEP.ViewModel = "models/weapons/tacint/v_python.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_python.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 60,
        Damage_Min = 30,
        RPM = 150,
        RecoilKick = 16,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 50,
        Damage_Min = 25,

        Range_Min = 400,
        Range_Max = 1800,

        RPM = 75,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 4,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.75
        },

        RecoilMaximum = 2,
        RecoilDissipationRate = 2,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Magnum

// "ballistics"

SWEP.Damage_Max = 70 // damage at minimum range
SWEP.Damage_Min = 45 // damage at maximum range
SWEP.Range_Min = 800 // distance for which to maintain maximum damage
SWEP.Range_Max = 2500 // distance at which we drop to minimum damage
SWEP.Penetration = 6 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.9

SWEP.MuzzleVelocity = 15500

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Double-Action" // only used externally for firemode name distinction

SWEP.RPM = 180

SWEP.Spread = 0.001

SWEP.ShootTimeMult = 1

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2
SWEP.RecoilResetTime = 0.1
SWEP.RecoilDissipationRate = 6
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 4
SWEP.RecoilKick = 10
SWEP.RecoilStability = 0.6

SWEP.RecoilSpreadPenalty = 0.004

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.9

SWEP.ReloadSpeedMult = 0.9

SWEP.AimDownSightsTime = 0.2
SWEP.SprintToFireTime = 0.15

SWEP.FreeAimMaxAngle = 2

// hold types

SWEP.HoldType = "pistol"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -1, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-125, 0, 45)
SWEP.BlindFireSuicidePos = Vector(25, 12, -6)

SWEP.SprintAng = Angle(0, 45, 0)
SWEP.SprintPos = Vector(2, 0, -16)

SWEP.SightAng = Angle(0, 0.45, 0)
SWEP.SightPos = Vector(-3.395, 0, -3.35)

SWEP.CorrectivePos = Vector(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

SWEP.Sway = 1
SWEP.ScopedSway = 0.5

// reload

SWEP.ClipSize = 6
SWEP.Ammo = "357"

SWEP.ReloadTimeMult = 1

SWEP.ReloadUpInTime = 1.2

SWEP.JamSkipFix = true

// sounds

local path = "TacRP/weapons/mr96/"
local path1 = "tacint_extras/python/"

SWEP.Sound_Shoot =  "^" .. path1 .. "deagle-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 2
SWEP.QCA_Eject = 0
SWEP.EjectEffect = 0

SWEP.MuzzleEffect = "muzzleflash_pistol_rbull"

// anims

SWEP.DeployTimeMult = 1

SWEP.AnimationTranslationTable = {
    ["deploy"] = "sh_draw",
    ["fire"] = {"sh_shoot1", "sh_shoot2", "sh_shoot3"},
    ["fire_iron"] = "sh_shoot1",
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2"},
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "draw",
    ["reload"] = "sh_reload",
    ["dryfire"] = "sh_dryfire",
    ["idle"] = "sh_idle",
    ["holster"] = "sh_holster"
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -3, -4.5),
    vm_ang = Angle(0, 20, 0),
    t = 0.35,
    tmax = 0.35,
    bones = {
        {
            bone = "ValveBiped.cylinder",
            ang = Angle(-60, 0, 0),
            t0 = 0,
            t1 = 0.25,
        },
        {
            bone = "ValveBiped.hammer",
            ang = Angle(35, 0, 0),
            t0 = 0.05,
            t1 = 0.2,
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
            t1 = 0.15,
        },
    },
}

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = "optic_pistol",
        Bone = "ValveBiped.mr96_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 0.8,
        WMScale = 1,
        Pos_VM = Vector(-3.4, -0.14, 2.7),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 1.5, -0.8),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.mr96_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(-2.25, -0.125, 9),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(0, 8, -2.25),
        Ang_WM = Angle(0, -90, 180),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_holster", "acc_brace", "acc_bipod"}, // yes, MR96 with bipod is a real thing!
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Trigger",
        Category = {"trigger_revolver"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol", "ammo_roulette"},
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

addsound("TacInt_Python.Release_Cylinder", path .. "mr96_release_cylinder.wav")
addsound("TacInt_Python.Eject_Shells", path .. "mr96_eject_shells.wav")
addsound("TacInt_Python.Insert_Bullets", path .. "mr96_insert_bullets.wav")
addsound("TacInt_Python.Shut_Cylinder", path .. "mr96_shut_cylinder.wav")
addsound("TacInt_Python.Insert_Bullets-Mid", path .. "mr96_insert_bullets-mid.wav")
addsound("TacInt_Python.Cock_Hammer", path .. "mr96_cockhammer.wav")
addsound("TacInt_Python.Deploy", path .. "mr96_deploy.wav")