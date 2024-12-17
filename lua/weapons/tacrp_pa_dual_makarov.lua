SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Dual Makarovs"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "3Akimbo"

SWEP.Description = "A pair of Soviet pistols to compensate for the lack of firepower with just one. Minimal recoil, but lethality remains poor past point blank."

SWEP.Trivia_Caliber = "9x18mm"
SWEP.Trivia_Manufacturer = "Izhevsk Mechanical Plant"
SWEP.Trivia_Year = "1948"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = "Assets: TehSnake\nSound: Hk, Vunsunta\nAnimation: Tactical Intervention"

SWEP.ViewModel = "models/weapons/tacint_extras/v_dual_makarov.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_dual_makarov.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 25,
        Damage_Min = 11,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3.5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1.15,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 18,
        Damage_Min = 6,
        Range_Min = 200,
        Range_Max = 1200,

        RecoilResetInstant = true,
        RecoilMaximum = 8,
        RecoilResetTime = 0.22,
        RecoilDissipationRate = 10,
        RecoilSpreadPenalty = 0.003,

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
    },
}

SWEP.TTTReplace = {["weapon_zm_pistol"] = 0.5, ["weapon_ttt_glock"] = 0.5}

// "ballistics"

SWEP.Damage_Max = 20
SWEP.Damage_Min = 5
SWEP.Range_Min = 250
SWEP.Range_Max = 1200
SWEP.Penetration = 2
SWEP.ArmorPenetration = 0.55
SWEP.ArmorBonus = 0.5

SWEP.MuzzleVelocity = 11000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemodes = {-2, 2}
SWEP.Firemode = false
SWEP.RunawayBurst = true
SWEP.PostBurstDelay = 0.06

SWEP.RPM = 520
SWEP.RPMMultBurst = 1.05
SWEP.RPMMultSemi = 1.05

SWEP.Spread = 0.014

SWEP.MoveSpreadPenalty = 0
SWEP.MidAirSpreadPenalty = 0.05
SWEP.HipFireSpreadPenalty = 0

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 20
SWEP.RecoilResetTime = 0.15
SWEP.RecoilDissipationRate = 20
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 4
SWEP.RecoilStability = 0.3

SWEP.RecoilSpreadPenalty = 0.0017

SWEP.Sway = 0.5

SWEP.CanBlindFire = false
SWEP.CanSuicide = true

SWEP.ShootTimeMult = 0.6

// handling

SWEP.MoveSpeedMult = 1
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 1

SWEP.ReloadSpeedMult = 0.65

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.25

// hold types

SWEP.HoldType = "duel"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeSuicide = "duel"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_DUEL

SWEP.PassiveAng = Angle(5, 0, -2)
SWEP.PassivePos = Vector(3, 0, -6)

SWEP.CustomizeAng = Angle(0, 35, 0)
SWEP.CustomizePos = Vector(1, 0, -12)

SWEP.BlindFireAng = Angle(0, 0, 0)
SWEP.BlindFirePos = Vector(0, 0, 0)

SWEP.BlindFireSuicideAng = Angle(0, 130, 0)
SWEP.BlindFireSuicidePos = Vector(1, 22, -15)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(1, 0, -12)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(60, 5, 0)

// reload

SWEP.ClipSize = 16
SWEP.Ammo = "pistol"
SWEP.Ammo_Expanded = "ti_pistol_light"

SWEP.ReloadTimeMult = 0.95

SWEP.DropMagazineModel = "models/weapons/tacint/magazines/makarov.mdl"
SWEP.DropMagazineImpact = "pistol"
SWEP.DropMagazineAmount = 2

SWEP.ReloadUpInTime = 2.8
SWEP.DropMagazineTime = 0.25

// sounds

local path = "tacrp/weapons/mtx/"
local path1 = "tacint_extras/makarov/"

SWEP.Sound_Shoot = "^" .. path1 .. "makarov-1.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 4

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.EjectEffect = 1

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["blind_idle"] = "idle",
    ["blind_fire"] = "idle",
    ["melee"] = {"melee1", "melee2"},
    ["shoot_left"] = {"shoot_left-1", "shoot_left-2"},
    ["shoot_right"] = {"shoot_right-1", "shoot_right-2"}
}

SWEP.LastShot = true
SWEP.Akimbo = true
SWEP.EffectsAlternate = true

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Tactical",
        Category = {"tactical_ebullet"},
        Bone = "ValveBiped.mtx_root2",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 0.9,
        WMScale = 1,
        Pos_VM = Vector(-2, -0.2, 5.45),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(-0.1, 8, -1.7),
        Ang_WM = Angle(0, -90, 180),
    },
    [2] = {
        PrintName = "Accessory",
        Category = {"acc_dual", "acc_extmag_dual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Trigger",
        Category = {"trigger_akimbo"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    }
}

SWEP.AttachmentCapacity = 30 // amount of "Capacity" this gun can accept

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_makarov.clip_in_left", path .. "clip_in-1.wav")
addsound("tacint_makarov.clip_in_right", path .. "clip_in-2.wav")
addsound("tacint_makarov.clip_out", path .. "clip_out.wav")
addsound("tacint_makarov.slide_back", path1 .. "SlideBack.wav")
addsound("tacint_makarov.slide_release", path1 .. "Sliderelease.wav")

SWEP.Scope = false

SWEP.FreeAim = false
