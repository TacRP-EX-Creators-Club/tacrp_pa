SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "AMT AutoMag III"
SWEP.AbbrevName = "AutoMag III"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "2Magnum Pistol"

SWEP.Description = "Stainless steel pistol chambered in an obscure cartridge. Not very powerful for a magnum pistol, but has good capacity."
SWEP.Description_Quote = ""

SWEP.Trivia_Caliber = "9mm Win Mag" // Most AutoMag IIIs were in .30 Carbine, but this is our excuse for it to be magnum caliber
SWEP.Trivia_Manufacturer = "Arcadia Machine & Tool"
SWEP.Trivia_Year = "1992"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Model/Texture: Degenerate Dak
Sounds: Navaro
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_extras/v_automag3.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_automag3.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 40,
        Damage_Min = 24,
        RPMMultSemi = 0.75,
        HipFireSpreadPenalty = 0.02,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 30,
        Damage_Min = 18,

        Range_Min = 700,
        Range_Max = 2000,

        RPM = 200,
        RPMMultSemi = 1,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.75
        },

        RecoilDissipationRate = 4.5,
        HipFireSpreadPenalty = 0.022,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Magnum

// "ballistics"

SWEP.Damage_Max = 34
SWEP.Damage_Min = 20
SWEP.Range_Min = 600 // distance for which to maintain maximum damage
SWEP.Range_Max = 2000 // distance at which we drop to minimum damage
SWEP.Penetration = 6 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.65
SWEP.ArmorBonus = 0.5

SWEP.MuzzleVelocity = 16000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 300
SWEP.RPMMultSemi = 0.7

SWEP.Spread = 0.0075
SWEP.RecoilSpreadPenalty = 0.013
SWEP.HipFireSpreadPenalty = 0.028

SWEP.ShootTimeMult = 0.75

SWEP.RecoilResetInstant = true
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 3
SWEP.RecoilResetTime = 0.17
SWEP.RecoilDissipationRate = 5
SWEP.RecoilFirstShotMult = 0.9

SWEP.RecoilVisualKick = 2.5
SWEP.RecoilKick = 7
SWEP.RecoilStability = 0.5

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.975
SWEP.ShootingSpeedMult = 0.8
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.28
SWEP.SprintToFireTime = 0.26

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(3, 0, 0)
SWEP.PassivePos = Vector(1, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-130, 0, 45)
SWEP.BlindFireSuicidePos = Vector(27, 17, -6)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(2, 0, -12)

SWEP.SightAng = Angle(5.05, 0, 0)
SWEP.SightPos = Vector(-2.35, 0, -3.7)

SWEP.CorrectivePos = Vector(-1.45, -5, 0)
SWEP.CorrectiveAng = Angle(-5, 5.2, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

SWEP.Sway = 1
SWEP.ScopedSway = 0.5

SWEP.FreeAimMaxAngle = 4

// reload

SWEP.ClipSize = 8
SWEP.Ammo = "357"

SWEP.ReloadTimeMult = 1.1

SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/automag3.mdl"
SWEP.DropMagazineImpact = "pistol"

SWEP.ReloadUpInTime = 1
SWEP.DropMagazineTime = 0.2

// sounds

local path = "tacint_extras/automag3/"

SWEP.Sound_Shoot = "^" .. path .. "automag3_fire.wav"
SWEP.Sound_Shoot_Silenced = path .. "automag3_fire_silenced.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 4
SWEP.QCA_Eject = 2
SWEP.EjectEffect = 1

SWEP.MuzzleEffect = "muzzleflash_pistol"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2", "shoot3"},
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2", "blind_shoot3"},
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.5, -0.6),
    vm_ang = Angle(0, 2, 0),
    t = 0.2,
    tmax = 0.2,
    bones = {
        {
            bone = "slide",
            pos = Vector(0, 0, -3),
            t0 = 0,
            t1 = 0.1,
        },
        {
            bone = "hammer",
            ang = Angle(-15, 0, 0),
            t0 = 0,
            t1 = 0.15,
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

SWEP.LastShot = true

// attachments

SWEP.NoTactical = true

SWEP.AttachmentElements = {
    ["rail"] = {
        BGs_VM = {
            {1, 1},
        },
        BGs_WM = {
            {1, 1},
        },
    },
    ["lazur"] = {
        BGs_VM = {
            {2, 1},
        },
        BGs_WM = {
            {2, 1},
        },
    },
    ["comp"] = {
        BGs_VM = {
            {3, 1},
        },
        BGs_WM = {
            {3, 1},
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_pistol", "automag3_laser"},
        Bone = "slide",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(-0, 0, 0.6),
        Ang_VM = Angle(0, -90, 0),
        Pos_WM = Vector(0, -1.75, -1),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = {"silencer", "automag3_muzz"},
        Bone = "sphinx_ROOT",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 0.6,
        WMScale = 0.6,
        Pos_VM = Vector(-2.85, 0, 13.1),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 11.85, -1.75),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "sphinx_ROOT",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1.1,
        WMScale = 1.3,
        Pos_VM = Vector(-1.9, 0.1, 9),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(0, 5.5, -2.75),
        Ang_WM = Angle(0, -90, 180),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_pistol2", "acc_holster", "acc_brace"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol", "ammo_automag3"},
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

addsound("tacint_automag3.Clip_In", path .. "MagIn.wav")
addsound("tacint_automag3.Clip_Out", path .. "MagOut.wav")
addsound("tacint_automag3.Slide_Shut", path .. "sliderelease2.wav")
addsound("tacint_automag3.Slide_Back", path .. "SlideBack.wav")
addsound("tacint_automag3.Slide_Forward", path .. "sliderelease.wav")
