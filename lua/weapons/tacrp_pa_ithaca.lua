SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Ithaca 37"
SWEP.Category = "Tactical RP" // "Tactical RP (Arctic)"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "5Shotgun"

SWEP.Description = "Vintage shotgun that has seen both police and military use. Capable of fast slam-fire but has poor spread and a low shell capacity."
SWEP.Description_Quote = "\"What? It was obvious! He's the RED Spy!\"" // take a wild guess

SWEP.ViewModel = "models/weapons/tacint_shark/v_ithaca.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_ithaca.mdl"

SWEP.Trivia_Caliber = "12 Gauge"
SWEP.Trivia_Manufacturer = "Ithaca Gun Company"
SWEP.Trivia_Year = "1937"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = "Model: Millenia\nTextures: Poux\nSounds: Strelok\nAnimation: Tactical Intervention"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        // TODO
    },
    [TacRP.BALANCE_TTT] = {
        // TODO
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Shotgun

// "ballistics"

SWEP.Damage_Max = 12
SWEP.Damage_Min = 5
SWEP.Range_Min = 100 // distance for which to maintain maximum damage
SWEP.Range_Max = 1500 // distance at which we drop to minimum damage
SWEP.Penetration = 1 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.47
SWEP.ArmorBonus = 1.25

SWEP.Num = 8

SWEP.MuzzleVelocity = 9000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 2

SWEP.FiremodeName = "Slam-Fire" // only used externally for firemode name distinction

SWEP.RPM = 85

SWEP.ShootTimeMult = 0.8

SWEP.Spread = 0.03
SWEP.ShotgunPelletSpread = 0.03

SWEP.HipFireSpreadPenalty = 0.015
SWEP.MidAirSpreadPenalty = 0

SWEP.ScopedSpreadPenalty = 0

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 3
SWEP.RecoilResetTime = 0.5 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 2.5
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 2
SWEP.RecoilKick = 18
SWEP.RecoilStability = 0.2
SWEP.RecoilAltMultiplier = 300

SWEP.RecoilSpreadPenalty = 0.02

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.8
SWEP.ShootingSpeedMult = 0.5
SWEP.SightedSpeedMult = 0.6

SWEP.ReloadSpeedMult = 0.45

SWEP.AimDownSightsTime = 0.38
SWEP.SprintToFireTime = 0.45

SWEP.Sway = 1
SWEP.ScopedSway = 0.25

SWEP.FreeAimMaxAngle = 5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeNPC = "shotgun"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(-0.25, -2.5, -4.25)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(4, -2, -4)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-0.59, -0.6, 3)
SWEP.SightPos = Vector(-3.55, -3, -2.1)

SWEP.CorrectivePos = Vector(0.275, 0, -0.2)
SWEP.CorrectiveAng = Angle(1.21, 0.1, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 5
SWEP.Ammo = "buckshot"
SWEP.ShotgunReload = true

SWEP.ReloadTimeMult = 1.25

// sounds

local path = "Tacint_shark/ithaca/m3"

SWEP.Sound_Shoot = "^" .. path .. "_fire.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/sg551/sg551_fire_silenced-1.wav"

SWEP.Vol_Shoot = 150
SWEP.ShootPitchVariance = 0.25 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.EjectEffect = 3
SWEP.EjectDelay = 0.5

// anims

// VM:
// idle
// fire
// fire1, fire2...
// dryfire
// melee
// reload
// midreload
// prime_grenade
// throw_grenade
// throw_grenade_underhand
// deploy
// blind_idle
// blind_fire
// blind_fire1, blind_fire2...
// blind_dryfire

// WM:
// attack1
SWEP.AnimationTranslationTable = {
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = {"blind_shoot1"},
    ["melee"] = {"melee1", "melee2"},
    ["reload"] = {"reload", "reload2"},
    ["jam"] = "reload_finish"
}

// attachments

SWEP.AttachmentElements = {
    ["saddle"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
}

SWEP.Attachments = {
    -- [1] = {
    --     PrintName = "Tactical",
    --     Category = "tactical",
    --     Bone = "ValveBiped.bekas_rootbone",
    --     AttachSound = "TacRP/weapons/flashlight_on.wav",
    --     DetachSound = "TacRP/weapons/flashlight_off.wav",
    --     InstalledElements = {"tactical"},
    --     VMScale = 1.25,
    --     Pos_VM = Vector(-1.6, 0.1, 24),
    --     Ang_VM = Angle(90, 0, 180),
    --     Pos_WM = Vector(27, -0.2, -13.5),
    --     Ang_WM = Angle(-25, 3.5, 0),
    -- },
    [1] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "acc_extmag_shotgun"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
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
        Category = {"ammo_shotgun"},
        InstalledElements = {"saddle"},
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

addsound("tacint_ithaca.Insertshell", path .. "_insertshell.wav")
addsound("tacint_ithaca.Movement", path .. "movement-1.wav")
addsound("tacint_ithaca.PumpAction", path .. "_pump.wav")