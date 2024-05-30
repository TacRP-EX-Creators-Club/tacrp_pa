SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "M79"
SWEP.AbbrevName = "M79"
SWEP.Category = "Tactical RP (Special)"

SWEP.SubCatTier = "9Special"
SWEP.SubCatType = "6Launcher"

SWEP.Description = "Grenade launcher capable of firing a variety of payloads. Very accurate, but slower."

SWEP.Trivia_Caliber = "40mm Grenades"
SWEP.Trivia_Manufacturer = "Springfield Armory"
SWEP.Trivia_Year = "1961"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = "Textures: Millenia\nModel: EdisLeado\nAnimations: speedonerd & 8z"

SWEP.ViewModel = "models/weapons/tacint/v_m79.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_m320.mdl"

SWEP.NoRanger = true

SWEP.Slot = 4

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {
    },
}

// "ballistics"

SWEP.Damage_Max = 150
SWEP.Damage_Min = 150
SWEP.Range_Max = 6000
SWEP.Range_Min = 1000

SWEP.ShootEnt = "tacrp_proj_40mm_he"
SWEP.ShootEntForce = 6000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 7000

SWEP.Num = 1

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Single-Shot" // only used externally for firemode name distinction

SWEP.RPM = 60

SWEP.Spread = 0.0001

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2
SWEP.RecoilResetTime = 0.2 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 1
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 5
SWEP.RecoilVisualShake = 2

SWEP.RecoilKick = 15

SWEP.RecoilSpreadPenalty = 0 // extra spread per one unit of recoil
SWEP.HipFireSpreadPenalty = 0.05

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.25
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 1.2
SWEP.DeployTimeMult = 2

SWEP.AimDownSightsTime = 0.5
SWEP.SprintToFireTime = 0.5 // multiplies how long it takes to recover from sprinting

SWEP.Sway = 1
SWEP.ScopedSway = 0.2

SWEP.FreeAimMaxAngle = 12

// hold types

SWEP.HoldType = "smg"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_AR2

SWEP.PassiveAng = Angle(1, 0, 0)
SWEP.PassivePos = Vector(0.25, 1, -2)

SWEP.BlindFireAng = Angle(0, 0, 0)
SWEP.BlindFirePos = Vector(2, 2, -1)

SWEP.BlindFireSuicideAng = Angle(0, 120, 20)
SWEP.BlindFireSuicidePos = Vector(-7, 30, -25)

SWEP.SprintAng = Angle(45, -10, 0)
SWEP.SprintPos = Vector(6, 0, 0)

SWEP.SightAng = Angle(0, 5.5, -0.1)
SWEP.SightPos = Vector(-3.25, -7, -3)

SWEP.CorrectiveAng = Angle(-0.2, 0, 0.5)
SWEP.CorrectivePos = Vector(-0.025, 0, 0.15)

SWEP.CustomizeAng = Angle(30, 15, 0)
SWEP.CustomizePos = Vector(5, 0, -2)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_GEAR
SWEP.HolsterPos = Vector(0, -2, -3)
SWEP.HolsterAng = Angle(0, -90, -25)

// melee

SWEP.CanMeleeAttack = true

// reload

SWEP.ClipSize = 1
SWEP.Ammo = "smg1_grenade"

// sounds

local path = "TacRP/weapons/m320/"

SWEP.Sound_Shoot = "^" .. path .. "fire-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_m79"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire_iron"] = "fire1",
    ["fire1"] = "fire1",
    ["fire2"] = "fire1",
    ["blind_fire"] = {"blind_fire1", "blind_fire2"},
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = {"dryfire"}
}

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
    ["3gl"] = {
        BGs_VM = {
            {2, 1}
        },
    },
    ["buck"] = {
        BGs_VM = {
            {2, 2}
        },
    },
    ["heat"] = {
        BGs_VM = {
            {2, 3}
        },
    },
    ["lvg"] = {
        BGs_VM = {
            {2, 4}
        },
    },
    ["smoke"] = {
        BGs_VM = {
            {2, 5}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Ammo",
        Category = "ammo_40mm",
        AttachSound = "TacRP/weapons/m320/shell_in-1.wav",
        DetachSound = "TacRP/weapons/m320/shell_out-1.wav",
    },
    [2] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Perk",
        Category = {"perk", "perk_shooting", "perk_reload", "perk_melee"},
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

addsound("TacInt_m320.Tube_Open", path .. "tube_open-1.wav")
addsound("TacInt_m320.Tube_close", path .. "tube_close-1.wav")
addsound("TacInt_m320.shell_out", path .. "shell_out-1.wav")
addsound("TacInt_m320.shell_in", path .. "shell_in-1.wav")
addsound("TacInt_m320.buttstock_back", path .. "buttstock_back-1.wav")
addsound("TacInt_m320.sight_flipup", path .. "sight_flipup-1.wav")

SWEP.AutoSpawnable = false

if engine.ActiveGamemode() == "terrortown" then
    SWEP.AutoSpawnable = false
    SWEP.Kind = WEAPON_EQUIP
    SWEP.Slot = 6
    SWEP.CanBuy = { ROLE_TRAITOR }
    SWEP.EquipMenuData = {
        type = "Weapon",
        desc = "Low power grenade launcher. Variety of payload\noptions, but standard explosive grenades are weak.\nComes with 3 grenades.\n\nBEWARE: May be visible while holstered!",
    }

    function SWEP:TTTBought(buyer)
        buyer:GiveAmmo(2, "SMG1_Grenade")
    end
end