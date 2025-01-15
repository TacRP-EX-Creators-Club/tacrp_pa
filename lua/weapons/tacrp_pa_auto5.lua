SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Browning Auto 5"
SWEP.AbbrevName = "Auto 5"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "5Shotgun"

SWEP.Description = "Old school automatic shotgun. Small caliber shells have good range and firerate, but poor stopping power."
SWEP.Description_Quote = "\"Line 'em up and knock 'em down.\""

SWEP.Trivia_Caliber = "20 Gauge"
SWEP.Trivia_Manufacturer = "Browning Arms"
SWEP.Trivia_Year = "1900"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = "Model: RedRogueXIII, An Aggressive Napkin\nTexture: Futon\nSound: Futon\nAnimation: Tactical Intervention"
// Sound is not credited on the GameBanana page so ehhhh

SWEP.ViewModel = "models/weapons/tacint/v_auto5.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_auto5.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3


SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 10,
        Damage_Min = 7,
        RPM = 330,
        RecoilKick = 3.5,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 6,
        Damage_Min = 3,
        Range_Min = 200,
        Range_Max = 800,
        RPM = 220,
        RPMMultSemi = 1,
        RecoilKick = 2,
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AutoShotgun

// "ballistics"

SWEP.ShootTimeMult = 0.5

SWEP.Damage_Max = 8
SWEP.Damage_Min = 4
SWEP.Range_Min = 300 // distance for which to maintain maximum damage
SWEP.Range_Max = 2800 // distance at which we drop to minimum damage
SWEP.Penetration = 1 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.4
SWEP.ArmorBonus = 0.25

SWEP.Num = 6

SWEP.MuzzleVelocity = 10000

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 250
SWEP.RPMMultSemi = 0.75

SWEP.Spread = 0.02
SWEP.ShotgunPelletSpread = 0.02

SWEP.HipFireSpreadPenalty = 0.02
SWEP.MidAirSpreadPenalty = 0

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 4
SWEP.RecoilResetTime = 0.25 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 5
SWEP.RecoilFirstShotMult = 1.25 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 1.5
SWEP.RecoilKick = 5
SWEP.RecoilStability = 0.15
SWEP.RecoilAltMultiplier = 500
SWEP.NoRecoilPattern = true

SWEP.RecoilSpreadPenalty = 0.01

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.875
SWEP.ShootingSpeedMult = 0.55
SWEP.SightedSpeedMult = 0.7

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.37
SWEP.SprintToFireTime = 0.4

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -1.5, -6.5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(4, -2, -4)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightPos = Vector(-2.815, -4, -3.99)
SWEP.SightAng = Angle(0.4, -1.7, 0)

SWEP.CorrectivePos = Vector(-0.05, 0, -0.1)
SWEP.CorrectiveAng = Angle(0.395, 1.039, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

SWEP.Sway = 0.8
SWEP.ScopedSway = 0.2

SWEP.FreeAimMaxAngle = 6

// reload

SWEP.ClipSize = 5
SWEP.Ammo = "buckshot"
SWEP.ShotgunReload = true

SWEP.ReloadTimeMult = 1.15

// sounds

// local path = "tacrp/weapons/m4star10/"

SWEP.Sound_Shoot = "tacint_extras/auto5/auto5-1.wav"
SWEP.Sound_Shoot_Silenced = "tacint/weapons/sg551/sg551_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 0 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_m3"
SWEP.EjectEffect = 3

// anims

SWEP.AnimationTranslationTable = {
    ["fire"] = {"shoot1"},
    ["blind_fire"] = {"blind_shoot1"},
    ["melee"] = {"melee1", "melee2"},
    ["reload"] = {"reload", "reload2"},
    ["jam"] = "reload_finish"
}

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

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "ValveBiped._ROOT_Super90",
        InstalledElements = {"sights"},
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.75,
        WMScale = 0.9,
        Pos_VM = Vector(-5.75, 0.2, 6),
        Pos_WM = Vector(9.5, 1, -6.4),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom"},
        Bone = "ValveBiped._ROOT_Super90",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        VMScale = 1.25,
        Pos_VM = Vector(-3, 1, 15),
        Pos_WM = Vector(19, 0.25, -3.75),
        Ang_VM = Angle(90, 0, 90),
        Ang_WM = Angle(0, 0, -90),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_duffle", "acc_extmag_shotgun", "acc_sling"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
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
        Category = {"ammo_shotgun"},
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

addsound("tacint_auto5.Insertshell",
    {
        "tacrp/weapons/fp6/fp6_insertshell-1.wav",
        "tacrp/weapons/fp6/fp6_insertshell-2.wav",
        "tacrp/weapons/fp6/fp6_insertshell-3.wav",
    }
)
addsound("tacint_Bekas.Movement", "tacrp/weapons/bekas/movement-1.wav")
addsound("tacint_auto5.Bolt_Back", "tacrp/weapons/m4star10/bolt_back.wav")
addsound("tacint_auto5.Bolt_release", "tacrp/weapons/m4star10/bolt_release.wav")
addsound("tacint_m4.throw_catch", "tacrp/weapons/m4/m4_throw_catch.wav")