local ATT

------------------------------
-- #region optic_sako85_4x (Sako 85 4x Scope Zoom)
------------------------------
ATT = {}

ATT.PrintName = "att.optic_sako85_4x.name"
ATT.FullName = "att.optic_sako85_4x.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_8x.png", "mips smooth")
ATT.Description = "att.optic_sako85_4x.desc"
ATT.Pros = {"att.zoom.4"}

ATT.Free = true

ATT.Category = "optic_sako85"

ATT.SortOrder = 1

ATT.Override_ScopeFOV = 90 / 4

TacRP.LoadAtt(ATT, "optic_sako85_4x")

------------------------------
-- #region optic_sako85_8x (Sako 85 4x Scope Zoom)
------------------------------
ATT = {}

ATT.PrintName = "att.optic_sako85_8x.name"
ATT.FullName = "att.optic_sako85_8x.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_8x.png", "mips smooth")
ATT.Description = "att.optic_sako85_8x.desc"
ATT.Pros = {"att.zoom.8"}

ATT.Free = true

ATT.Category = "optic_sako85"

ATT.SortOrder = 2

ATT.Override_ScopeFOV = 90 / 8

TacRP.LoadAtt(ATT, "optic_sako85_8x")

------------------------------
-- #region optic_sako85_irons (Iron Sights)
------------------------------
ATT = {}

ATT.PrintName = "att.optic_sako85_irons.name"
ATT.Icon = Material("entities/tacrp_att_optic_irons.png", "mips smooth")
ATT.Description = "att.optic_sako85_irons.desc"
ATT.Pros = {"rating.handling", "rating.mobility"}
ATT.Cons = {"att.procon.noscope"}

ATT.Free = true

ATT.InstalledElements = {"irons"}

ATT.Category = "optic_sako85"

ATT.SortOrder = 0

ATT.Override_ScopeHideWeapon = false
ATT.Override_ScopeOverlay = false
ATT.Override_ScopeFOV = 90 / 1.25

ATT.Add_AimDownSightsTime = -0.05
ATT.Add_SprintToFireTime = -0.04
ATT.Add_SightedSpeedMult = 0.1
ATT.Add_ShootingSpeedMult = 0.05
ATT.Mult_HipFireSpreadPenalty = 0.75

TacRP.LoadAtt(ATT, "optic_sako85_irons")

------------------------------
-- #region ammo_sako85_222 (Sako 85 .222 Winchester Mod Kit)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_sako85_222.name"
ATT.FullName = "att.ammo_sako85_222.name.full"
ATT.Icon = Material("entities/tacrp_pa_sako85.png", "mips smooth")
ATT.Description = "att.ammo_sako85_222.desc"
ATT.Pros = {"stat.rpm", "stat.recoilkick", "stat.clipsize"}
ATT.Cons = {"stat.damage"}

ATT.Category = "ammo_sako85"
ATT.Free = true

ATT.SortOrder = 1

ATT.Override_Ammo = "smg1"
ATT.Override_Ammo_Expanded = "smg1"
ATT.Override_Sound_Shoot = "^tacint_extras/sako85/m16_fire_01.wav"

ATT.Mult_RPM = 1.2
ATT.Mult_ShootTimeMult = 1.15 / 1.2

ATT.Mult_Damage_Max = 0.85
ATT.Mult_Damage_Min = 0.85

ATT.Mult_RecoilKick = 0.5
ATT.Mult_Range_Max = 1.25
ATT.Add_ClipSize = 1 -- not realism but who cares

ATT.Override_BodyDamageMultipliersExtra = {
    [HITGROUP_STOMACH] = 0.85,
}

TacRP.LoadAtt(ATT, "ammo_sako85_222")

------------------------------
-- #region ammo_sako85_300mag (Sako 85 .300 Winchester Magnum Mod Kit/.300 Win Mag)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_sako85_300mag.name"
ATT.FullName = "att.ammo_sako85_300mag.name.full"
ATT.Icon = Material("entities/tacrp_pa_sako85.png", "mips smooth")
ATT.Description = "att.ammo_sako85_300mag.desc"
ATT.Pros = {"stat.damage"}
ATT.Cons = {"stat.recoilkick", "stat.rpm", "stat.clipsize"}

ATT.Category = "ammo_sako85"
ATT.Free = true

ATT.SortOrder = 2

ATT.Override_Ammo = "357"
ATT.Override_Ammo_Expanded = "ti_rifle"

ATT.Override_Sound_Shoot = "^tacint_extras/sako85/win1892_fire_01.wav"

ATT.Mult_RPM = 0.9
ATT.Mult_ShootTimeMult = 1.15 / 0.9

ATT.Mult_Damage_Max = 1.16
ATT.Mult_Damage_Min = 1.16

ATT.Add_RecoilKick = 1
ATT.Add_ClipSize = -1

ATT.Override_BodyDamageMultipliersExtra = {
    [HITGROUP_STOMACH] = 0.9,
}

TacRP.LoadAtt(ATT, "ammo_sako85_300mag")

------------------------------
-- #region optic_svt_pu (SVT-40 3.5x PU Scope)
------------------------------
ATT = {}

ATT.PrintName = "att.optic_svt_pu.name"
ATT.FullName = "att.optic_svt_pu.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_svt_pu.png", "mips smooth")
ATT.Description = "att.optic_svt_pu.desc"
ATT.Pros = {"att.zoom.3.5"}
ATT.Cons = {"stat.aimdownsights"}

ATT.Category = {"optic_pu"}

ATT.SortOrder = 5

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/pu.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 3.5

ATT.Add_AimDownSightsTime = 0.04

ATT.InstalledElements = {"scope"}

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "optic_svt_pu")

------------------------------
-- #region ammo_m202_smoke (M202 Smoke Rockets)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_m202_smoke.name"
ATT.FullName = "att.ammo_m202_smoke.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_m202.png", "mips smooth")
ATT.Description = "att.ammo_m202_smoke.desc"
ATT.Pros = {"att.procon.smoke"}
ATT.Cons = {"att.procon.noexp"}

ATT.Category = "ammo_m202"

ATT.ShootEnt = "tacrp_proj_m202_smoke"

ATT.InstalledElements = {"smoke"}

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "ammo_m202_smoke")
-- #endregion

------------------------------
-- #region ammo_m202_apers (M202 Hornet Rockets)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_m202_apers.name"
ATT.FullName = "att.ammo_m202_apers.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_m202.png", "mips smooth")
ATT.Description = "att.ammo_m202_apers.desc"
ATT.Pros = {"att.procon.radius", "att.procon.proxfuse"}
ATT.Cons = {"stat.damage", "stat.muzzlevelocity"}

ATT.Category = "ammo_m202"

ATT.Override_Damage_Max = 60
ATT.Override_Damage_Min = 60

ATT.ShootEnt = "tacrp_proj_m202_apers"
ATT.Mult_ShootEntForce = 0.75

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "ammo_m202_apers")
-- #endregion

------------------------------
-- #region ammo_m202_harpoon (M202 Harpoon Rockets)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_m202_harpoon.name"
ATT.FullName = "att.ammo_m202_harpoon.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_m202.png", "mips smooth")
ATT.Description = "att.ammo_m202_harpoon.desc"
ATT.Pros = {"stat.damage", "rating.mobility", "rating.precision"}
ATT.Cons = {"att.procon.noexp"}

ATT.Category = "ammo_m202"

ATT.Mult_Spread = 0.5
ATT.Mult_RecoilSpreadPenalty = 0.65

ATT.Override_Damage_Max = 100
ATT.Override_Damage_Min = 10

ATT.Override_Sound_Shoot = "weapons/crossbow/fire1.wav"

ATT.Override_ShootingSpeedMult = 0.75
ATT.Override_ReloadSpeedMult = 0.5

-- ATT.Override_Num = 1

ATT.Ammo = "xbowbolt"

ATT.ShootEnt = "tacrp_proj_m202_harpoon"
-- ATT.Mult_ShootEntForce = 1.25
ATT.Mult_Spread = 0.25

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "ammo_m202_harpoon")
-- #endregion

------------------------------
-- #region ammo_m202_he (M202 High-Explosive Anti-Tank Rockets (HEAT))
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_m202_he.name"
ATT.FullName = "att.ammo_m202_he.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_m202.png", "mips smooth")
ATT.Description = "att.ammo_m202_he.desc"
ATT.Pros = {"att.procon.proj.direct"}
ATT.Cons = {"stat.rpm", "att.procon.radius"}

ATT.Category = "ammo_m202"

ATT.ShootEnt = "tacrp_proj_m202_he"

ATT.Mult_RPM = 0.5

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "ammo_m202_he")
-- #endregion

------------------------------
-- #region optic_mosin_irons (Mosin-Nagant Sniper Bolt)
------------------------------
ATT = {}

ATT.PrintName = "att.optic_mosin_irons.name"
ATT.FullName = "att.optic_mosin_irons.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_irons.png", "mips smooth")
ATT.Description = "att.optic_mosin_irons.desc"
ATT.Pros = {"stat.spread", "stat.zoom"}
ATT.Cons = {"stat.rpm"}

ATT.Category = "optic_mosin"
ATT.Free = true

ATT.SortOrder = 1

ATT.Override_ScopeFOV = 90 / 1.5
ATT.Mult_Spread = 0.333
ATT.Mult_RPM = 45 / 52
ATT.Mult_ShootTimeMult = 1.15

ATT.Hook_TranslateSequence = function(self, seq)
    if seq == "fire" then
        return seq .. "_sniper"
    elseif seq == "fire_iron" then
        return seq .. "_sniper"
    elseif seq == "deploy" then
        return seq .. "_sniper"
    elseif seq == "reload_start" then
        return seq .. "_sniper"
    elseif seq == "reload_finish" then
        return seq .. "_sniper"
    end
end

ATT.InstalledElements = {"bolt"}

TacRP.LoadAtt(ATT, "optic_mosin_irons")

------------------------------
-- #region optic_mosin_pu (Mosin-Nagant 3.5x PU Scope)
------------------------------
ATT = {}

ATT.PrintName = "att.optic_mosin_pu.name"
ATT.FullName = "att.optic_mosin_pu.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_mosin_pu.png", "mips smooth")
ATT.Description = "att.optic_mosin_pu.desc"
ATT.Pros = {"stat.spread", "att.zoom.3.5"}
ATT.Cons = {"stat.rpm", "stat.aimdownsights"}

ATT.Category = "optic_mosin"

ATT.SortOrder = 3.5

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/pu.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 3.5

ATT.Mult_Spread = 0.333
ATT.Add_AimDownSightsTime = 0.03
ATT.Mult_RPM = 45 / 52
ATT.Mult_ShootTimeMult = 1.15

ATT.Hook_TranslateSequence = function(self, seq)
    if seq == "fire" then
        return seq .. "_sniper"
    elseif seq == "fire_iron" then
        return seq .. "_sniper"
    elseif seq == "deploy" then
        return seq .. "_sniper"
    elseif seq == "reload_start" then
        return seq .. "_sniper"
    elseif seq == "reload_finish" then
        return seq .. "_sniper"
    end
end

ATT.InstalledElements = {"scope1", "bolt"}

TacRP.LoadAtt(ATT, "optic_mosin_pu")

------------------------------
-- #region optic_mosin_pem (Mosin-Nagant 6x PEM Scope)
------------------------------
ATT = {}

ATT.PrintName = "att.optic_mosin_pem.name"
ATT.FullName = "att.optic_mosin_pem.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_mosin_pem.png", "mips smooth")
ATT.Description = "att.optic_mosin_pem.desc"
ATT.Pros = {"stat.spread", "att.zoom.6"}
ATT.Cons = {"stat.rpm", "stat.aimdownsights"}

ATT.Category = "optic_mosin"

ATT.SortOrder = 6

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/pu.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 6

ATT.Mult_Spread = 0.333
ATT.Add_AimDownSightsTime = 0.03
ATT.Mult_RPM = 45 / 52
ATT.Mult_ShootTimeMult = 1.15

ATT.Hook_TranslateSequence = function(self, seq)
    if seq == "fire" then
        return seq .. "_sniper"
    elseif seq == "fire_iron" then
        return seq .. "_sniper"
    elseif seq == "deploy" then
        return seq .. "_sniper"
    elseif seq == "reload_start" then
        return seq .. "_sniper"
    elseif seq == "reload_finish" then
        return seq .. "_sniper"
    end
end

ATT.InstalledElements = {"scope2", "bolt"}

TacRP.LoadAtt(ATT, "optic_mosin_pem")

------------------------------
-- #region optic_mosin_pe (Mosin-Nagant 4x PE Scope)
------------------------------
ATT = {}

ATT.PrintName = "att.optic_mosin_pe.name"
ATT.FullName = "att.optic_mosin_pe.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_mosin_pe.png", "mips smooth")
ATT.Description = "att.optic_mosin_pe.desc"
ATT.Pros = {"stat.spread", "att.zoom.4"}
ATT.Cons = {"stat.rpm", "stat.aimdownsights"}

ATT.Category = "optic_mosin"

ATT.SortOrder = 4

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/pu.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 4

ATT.Mult_Spread = 0.333
ATT.Add_AimDownSightsTime = 0.03
ATT.Mult_RPM = 45 / 52
ATT.Mult_ShootTimeMult = 1.15

ATT.Hook_TranslateSequence = function(self, seq)
    if seq == "fire" then
        return seq .. "_sniper"
    elseif seq == "fire_iron" then
        return seq .. "_sniper"
    elseif seq == "deploy" then
        return seq .. "_sniper"
    elseif seq == "reload_start" then
        return seq .. "_sniper"
    elseif seq == "reload_finish" then
        return seq .. "_sniper"
    end
end

ATT.InstalledElements = {"scope3", "bolt"}

TacRP.LoadAtt(ATT, "optic_mosin_pe")

------------------------------
-- #region muzz_mosin_bayonet (Mosin-Nagant Spike Bayonet)
------------------------------
ATT = {}

ATT.PrintName = "att.muzz_mosin_bayonet.name"
ATT.FullName = "att.muzz_mosin_bayonet.name.full"
ATT.Icon = Material("entities/tacrp_att_muzz_mosin_bayonet.png", "mips smooth")
ATT.Description = "att.muzz_mosin_bayonet.desc"
ATT.Pros = {"stat.meleedamage", "stat.meleerange"}
ATT.Cons = {"stat.sightedspeed", "stat.scopedsway", "stat.meleeattacktime"}

ATT.Category = "muzz_mosin"

ATT.SortOrder = 999

ATT.Add_MeleeRange = 24
ATT.Mult_MeleeDamage = 2
ATT.Mult_MeleeAttackTime = 1.25

ATT.Mult_SightedSpeedMult = 0.85
ATT.Add_ScopedSway = 0.1

ATT.Hook_TranslateSequence = function(self, seq)
    if seq == "melee" then
        return seq .. "_bayo"
    end
end

ATT.InstalledElements = {"bayonet"}

ATT.Override_Sound_MeleeHit = "tacint_extras/mosin/melee_hitworld.ogg"
ATT.Override_Sound_MeleeHitBody = "tacint_extras/mosin/melee_hitbody.ogg"

TacRP.LoadAtt(ATT, "muzz_mosin_bayonet")

------------------------------
-- #region muzz_svu_supp (Dragunov SVU Suppressor)
------------------------------
ATT = {}

ATT.PrintName = "att.muzz_svu_supp.name"
ATT.FullName = "att.muzz_svu_supp.name.full"
ATT.Icon = Material("entities/tacrp_att_muzz_svu_supp.png", "mips smooth")
ATT.Description = "att.muzz_svu_supp.desc"
ATT.Pros = {"stat.rpm"}
ATT.Cons = {"stat.recoilstability", "rating.range", "rating.maneuvering"}

ATT.InstalledElements = {"supp"}

ATT.ModelOffset = Vector(0.4, 0, -0.05)

ATT.Category = "muzz_svu"

ATT.SortOrder = 1

ATT.Add_Vol_Shoot = -20

ATT.Mult_RPM = 1.15

ATT.Mult_RecoilStability = 0.66667

ATT.Mult_Range_Max = 0.66667
ATT.Mult_Range_Min = 0.25

ATT.Add_FreeAimMaxAngle = 0.5
ATT.Add_Sway = 0.1
ATT.Add_ScopedSway = 0.05

ATT.Silencer = true
ATT.Override_MuzzleEffect = "muzzleflash_suppressed"

TacRP.LoadAtt(ATT, "muzz_svu_supp")

------------------------------
-- #region muzz_sks_bayonet (SKS Folding Bayonet)
------------------------------
ATT = {}

ATT.PrintName = "att.muzz_sks_bayonet.name"
ATT.FullName = "att.muzz_sks_bayonet.name.full"
ATT.Icon = Material("entities/tacrp_att_muzz_sks_bayonet.png", "mips smooth")
ATT.Description = "att.muzz_sks_bayonet.desc"
ATT.Pros = {"stat.meleedamage", "stat.meleerange"}
ATT.Cons = {"stat.sightedspeed", "stat.scopedsway", "stat.meleeattacktime"}

ATT.Category = "muzz_sks"
ATT.Free = true

ATT.SortOrder = 999

ATT.Add_MeleeRange = 24
ATT.Mult_MeleeDamage = 2
ATT.Mult_MeleeAttackTime = 1.25

ATT.Mult_SightedSpeedMult = 0.85
ATT.Add_ScopedSway = 0.1

ATT.InstalledElements = {"bayonet"}

ATT.Override_Sound_MeleeHit = "tacint_extras/mosin/melee_hitworld.ogg"
ATT.Override_Sound_MeleeHitBody = "tacint_extras/mosin/melee_hitbody.ogg"

TacRP.LoadAtt(ATT, "muzz_sks_bayonet")

------------------------------
-- #region tac_cz75_mag (CZ-75 Backup Mag)
------------------------------
ATT = {}

ATT.PrintName = "att.tac_cz75_mag.name"
ATT.FullName = "att.tac_cz75_mag.name.full"
ATT.Icon = Material("entities/tacrp_att_tac_cz75_mag.png", "mips smooth")
ATT.Description = "att.tac_cz75_mag.desc"
ATT.Pros = {"stat.reloadtime"}
ATT.Cons = {"stat.sightedspeed", "rating.stability"}

ATT.InstalledElements = {"magazine"}

ATT.Category = "tactical_cz75"
ATT.Free = true
ATT.SortOrder = 999

ATT.Mult_ReloadTimeMult = 0.95
ATT.Mult_SightedSpeedMult = 0.9
ATT.Add_Sway = 0.25
ATT.Add_ScopedSway = 0.1

TacRP.LoadAtt(ATT, "tac_cz75_mag")

------------------------------
-- #region barrel_coachgun_short (Coachgun Shortened Barrels)
------------------------------
ATT = {}

ATT.PrintName = "att.barrel_coachgun_short.name"
ATT.FullName = "att.barrel_coachgun_short.name.full"
ATT.Icon = Material("entities/tacrp_att_barrel_coachgun_short.png", "mips smooth")
ATT.Description = "att.barrel_coachgun_short.desc"
ATT.Pros = {"stat.rpm", "rating.maneuvering", "rating.mobility"}
ATT.Cons = {"stat.spread", "stat.recoilkick", "stat.range"}

ATT.InstalledElements = {"short"}

ATT.Category = "barrel_coachgun"
ATT.Free = false
ATT.SortOrder = 999

ATT.Mult_MuzzleVelocity = 0.85
ATT.Mult_RPM = 1.15
ATT.Add_RecoilKick = 10
ATT.Mult_RecoilKick = 1.25
ATT.Add_RecoilVisualKick = 2
ATT.Add_Spread = 0.03
ATT.Add_ShotgunPelletSpread = 0.025
ATT.Add_HipFireSpreadPenalty = -0.005
ATT.Add_FreeAimMaxAngle = -2.5
ATT.Add_AimDownSightsTime = -0.18
ATT.Add_SprintToFireTime = -0.15
ATT.Mult_DeployTimeMult = 0.75
ATT.Mult_HolsterTimeMult = 0.75
ATT.Add_MoveSpeedMult = 0.05
ATT.Add_SightedSpeedMult = 0.15
ATT.Add_ShootingSpeedMult = 0.2
ATT.Mult_Range_Max = 0.5

ATT.Override_Sound_Shoot = "^tacint_extras/coachgun/coach_fire1.wav"

TacRP.LoadAtt(ATT, "barrel_coachgun_short")

------------------------------
-- #region muzz_pistol_comp (Compensator)
------------------------------
ATT = {}

ATT.PrintName = "att.muzz_pistol_comp.name"
ATT.Icon = Material("entities/tacrp_att_muzz_pistol_comp.png", "mips smooth")
ATT.Description = "att.muzz_pistol_comp.desc"
ATT.Pros = {"stat.recoil", "stat.spread", "stat.range_min"}
ATT.Cons = {"stat.rpm"}

ATT.InvAtt = "muzz_pistol_comp"

ATT.Category = "automag3_muzz"

ATT.InstalledElements = {"comp"}

ATT.SortOrder = 1

ATT.Mult_RecoilKick = 0.5
ATT.Mult_RPM = 0.9
ATT.Mult_Spread = 0.6
ATT.Add_Range_Min = 500

TacRP.LoadAtt(ATT, "muzz_pistol_comp_automag3")

------------------------------
-- #region ammo_automag3_30carbine (AutoMag III .30 Carbine Mod Kit)
------------------------------
ATT = {}

ATT.PrintName = "tt.ammo_automag3_30carbine.name"
ATT.FullName = "tt.ammo_automag3_30carbine.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_automag3_30carbine.png", "mips smooth")
ATT.Description = "tt.ammo_automag3_30carbine.desc"
ATT.Pros = {"stat.spread", "stat.range", "stat.muzzlevelocity"}
ATT.Cons = {"stat.rpm"}

ATT.Category = "ammo_automag3"
ATT.Free = true

ATT.SortOrder = 0

ATT.Override_Ammo = "smg1"
ATT.Override_Ammo_Expanded = "ti_pdw"

ATT.Mult_RPM = 0.85
ATT.Mult_ShootTimeMult = 1 / 0.85

ATT.Add_Spread = -0.004

ATT.Add_Range_Min = 500
ATT.Add_Range_Max = 1500
ATT.Mult_MuzzleVelocity = 1.5

TacRP.LoadAtt(ATT, "ammo_automag3_30carbine")

------------------------------
-- #region optic_smle_no32 (Lee Enfield No. 32 Telescopic Scope/No. 32 Scope)
------------------------------
ATT = {}

ATT.PrintName = "att.optic_smle_no32.name"
ATT.FullName = "att.optic_smle_no32.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_mosin_pe.png", "mips smooth")
ATT.Description = "att.optic_smle_no32.desc"
ATT.Pros = {"stat.spread", "att.zoom.3.5"}
ATT.Cons = {"stat.reloadtime", "stat.aimdownsights"}

ATT.Category = "optic_smle"

ATT.SortOrder = 3.5

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/pu.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 3.5

ATT.Mult_Spread = 0.25
ATT.Add_AimDownSightsTime = 0.03
ATT.Mult_ReloadTimeMult = 1.1


ATT.InstalledElements = {"scope"}

TacRP.LoadAtt(ATT, "optic_smle_no32")

------------------------------
-- #region optic_smle_mad (Mad Minute)
------------------------------
ATT = {}

ATT.PrintName = "optic_smle_mad.name"
ATT.FullName = "optic_smle_mad.name.full"
ATT.Icon = Material("entities/tacrp_att_bolt_greased.png", "mips smooth")
ATT.Description = "optic_smle_mad.desc"
ATT.Pros = {"stat.rpm"}
ATT.Cons = {"rating.mobility", "stat.recoil"}

ATT.Category = "bolt_mad"

ATT.SortOrder = 1

ATT.Mult_RPM = 2
ATT.Mult_ShootTimeMult = 1 / 2

ATT.Add_RecoilVisualKick = 2
ATT.Mult_RecoilKick = 1.25
ATT.Add_ShootingSpeedMult = -0.2
ATT.Add_SightedSpeedMult = -0.1

TacRP.LoadAtt(ATT, "bolt_mad")
-- #endregion

------------------------------
-- #region ammo_p2a1_incendiary (P2A1 Incendiary Cartridges)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_p2a1_incendiary.name"
ATT.FullName = "att.ammo_p2a1_incendiary.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_40mm_concussion.png", "mips smooth")
ATT.Description = "att.ammo_p2a1_incendiary.desc"
ATT.Pros = {"att.procon.radius", "att.procon.incendiary"}
ATT.Cons = {"att.procon.noflare", "stat.muzzlevelocity", "att.procon.armdelay"}

ATT.Category = "ammo_p2a1"

ATT.SortOrder = 0
ATT.Override_ShootEnt = "tacrp_proj_p2a1_incendiary"
ATT.Mult_ShootEntForce = 0.7

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

ATT.ShellColor = Color(255, 100, 0)

TacRP.LoadAtt(ATT, "ammo_p2a1_incendiary")

------------------------------
-- #region ammo_p2a1_smoke (P2A1 Smoke Cartridges)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_p2a1_smoke.name"
ATT.FullName = "att.ammo_p2a1_smoke.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_40mm_smoke.png", "mips smooth")
ATT.Description = "att.ammo_p2a1_smoke.desc"
ATT.Pros = {"att.procon.smoke"}
ATT.Cons = {"att.procon.noflare", "att.procon.nonlethal", "stat.muzzlevelocity"}

ATT.Category = "ammo_p2a1"

ATT.SortOrder = 1
ATT.Override_ShootEnt = "tacrp_proj_p2a1_smoke"
ATT.Mult_ShootEntForce = 0.75

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

ATT.ShellColor = Color(100, 100, 100)

TacRP.LoadAtt(ATT, "ammo_p2a1_smoke")

------------------------------
-- #region ammo_p2a1_para (P2A1 Illumination Flare Cartridges)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_p2a1_para.name"
ATT.FullName = "att.ammo_p2a1_para.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_40mm_concussion.png", "mips smooth")
ATT.Description = "att.ammo_p2a1_para.desc"
ATT.Pros = {"att.procon.illumradius"}
ATT.Cons = {"att.procon.timedfuse", "att.procon.noexp"}

ATT.Category = "ammo_p2a1"

ATT.SortOrder = 0.1
ATT.Override_ShootEnt = "tacrp_proj_p2a1_paraflare"

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

ATT.ShellColor = Color(255, 255, 0)

TacRP.LoadAtt(ATT, "ammo_p2a1_para")

------------------------------
-- #region ammo_p2a1_heal (P2A1 Medi-Smoke Cartridges)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_p2a1_heal.name"
ATT.FullName = "att.ammo_p2a1_heal.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_40mm_smoke.png", "mips smooth")
ATT.Description = "att.ammo_p2a1_heal.desc"
ATT.Pros = {"att.procon.heal"}
ATT.Cons = {"att.procon.noflare", "att.procon.nonlethal", "stat.muzzlevelocity"}

ATT.Category = "ammo_p2a1"
ATT.InvAtt = "ammo_40mm_heal"

ATT.SortOrder = 1.5
ATT.Override_ShootEnt = "tacrp_proj_p2a1_heal"
ATT.Mult_ShootEntForce = 0.75

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

ATT.ShellColor = Color(255, 0, 255)

TacRP.LoadAtt(ATT, "ammo_p2a1_heal")


------------------------------
-- #region ammo_p2a1_buckshot (P2A1 Magnum Buck Shotshells)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_p2a1_buckshot.name"
ATT.FullName = "att.ammo_p2a1_buckshot.name.full"
ATT.Icon = Material("entities/tacrp_att_acc_magnum.png", "mips smooth")
ATT.Description = "att.ammo_p2a1_buckshot.desc"
ATT.Pros = {"att.procon.direct"}
ATT.Cons = {"stat.spread", "rating.mobility"}

ATT.Category = "ammo_p2a1"
ATT.InvAtt = "ammo_shotgun_mag"

ATT.SortOrder = 2

ATT.Override_Ammo = "buckshot"
ATT.Override_ShootEnt = false
ATT.Add_RecoilKick = 30
ATT.Override_Spread = 0.06
ATT.Override_ShotgunPelletSpread = 0.06
ATT.Override_Damage_Max = 10
ATT.Override_Damage_Min = 4
ATT.Override_Range_Min = 150
ATT.Override_Range_Max = 1000
ATT.Override_NoRanger = false
ATT.Override_Num = 12
ATT.Mult_ShootingSpeedMult = 0.5

ATT.Override_Sound_ShootAdd = "^tacrp/weapons/m4star10/fire-2.wav"
ATT.Override_MuzzleEffect = "muzzleflash_shotgun"

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

ATT.ShellColor = Color(0, 255, 0)

TacRP.LoadAtt(ATT, "ammo_p2a1_buckshot")

------------------------------
-- #region ammo_p2a1_bird (P2A1 Birdshot Shotshells)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_p2a1_bird.name"
ATT.FullName = "att.ammo_p2a1_bird.name.full"
ATT.Icon = Material("entities/tacrp_att_acc_bird.png", "mips smooth")
ATT.Description = "att.ammo_p2a1_bird.desc"
ATT.Pros = {"att.procon.direct", "att.procon.moreproj"}
ATT.Cons = {"stat.spread", "stat.damage", "rating.mobility"}

ATT.Category = "ammo_p2a1"
ATT.InvAtt = "ammo_shotgun_bird"

ATT.SortOrder = 3

ATT.Override_Ammo = "buckshot"
ATT.Override_ShootEnt = false
ATT.Add_RecoilKick = 18
ATT.Override_Spread = 0.1
ATT.Override_ShotgunPelletSpread = 0.08
ATT.Override_Damage_Max = 5
ATT.Override_Damage_Min = 2
ATT.Override_Range_Min = 150
ATT.Override_Range_Max = 1000
ATT.Override_NoRanger = false
ATT.Override_Num = 24
ATT.Mult_ShootingSpeedMult = 0.75

ATT.Override_Sound_ShootAdd = "^tacrp/weapons/m4star10/fire-2.wav"
ATT.Override_MuzzleEffect = "muzzleflash_shotgun"

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

ATT.ShellColor = Color(255, 255, 255)

TacRP.LoadAtt(ATT, "ammo_p2a1_bird")

------------------------------
-- #region ammo_shotgun_slugs (P2A1 Slug Shotshells)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_shotgun_slugs.name"
ATT.FullName = "att.ammo_p2a1_slug.name.full"
ATT.Icon = Material("entities/tacrp_att_acc_slugs.png", "mips smooth")
ATT.Description = "att.ammo_p2a1_slug.desc"
ATT.Pros = {"att.procon.direct", "stat.range"}
ATT.Cons = {"att.procon.1proj", "rating.mobility"}

ATT.Category = "ammo_p2a1"
ATT.InvAtt = "ammo_shotgun_slugs"

ATT.SortOrder = 4

ATT.Override_Ammo = "buckshot"
ATT.Override_ShootEnt = false
ATT.Add_RecoilKick = 18
ATT.Override_Spread = 0.01
ATT.Override_Damage_Max = 75
ATT.Override_Damage_Min = 30
ATT.Override_Range_Min = 300
ATT.Override_Range_Max = 1200
ATT.Override_NoRanger = false
ATT.Mult_ShootingSpeedMult = 0.5
ATT.Mult_MuzzleVelocity = 1.25
ATT.Add_HipFireSpreadPenalty = 0.015

ATT.Override_Sound_ShootAdd = "^tacrp/weapons/m4star10/fire-2.wav"
ATT.Override_MuzzleEffect = "muzzleflash_slug"

ATT.Override_BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}


if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

ATT.ShellColor = Color(25, 25, 25)

TacRP.LoadAtt(ATT, "ammo_p2a1_slug")

------------------------------
-- #region ammo_p2a1_frag (P2A1 High-Explosive Frag Shotshells)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_p2a1_frag.name"
ATT.FullName = "att.ammo_p2a1_frag.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_frag12.png", "mips smooth")
ATT.Description = "att.ammo_p2a1_frag.desc"
ATT.Pros = {"att.procon.explosive", "att.procon.radius"}
ATT.Cons = {"att.procon.damage", "stat.muzzlevelocity"}

ATT.Category = "ammo_p2a1"
ATT.InvAtt = "ammo_shotgun_frag"

ATT.SortOrder = 5

ATT.Override_Ammo = "buckshot"
ATT.Override_ShootEnt = false
ATT.Add_RecoilKick = 18
ATT.Override_Spread = 0.02
ATT.Override_Damage_Max = 25
ATT.Override_Damage_Min = 25
ATT.Override_ExplosiveEffect = "HelicopterMegaBomb"
ATT.Add_ExplosiveDamage = 50
ATT.Add_ExplosiveRadius = 256
ATT.Override_NoRanger = false
ATT.Add_HipFireSpreadPenalty = 0.02
ATT.Mult_MuzzleVelocity = 0.5

ATT.Override_Sound_ShootAdd = "^tacrp/weapons/m4star10/fire-2.wav"
ATT.Override_MuzzleEffect = "muzzleflash_slug"

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

ATT.ShellColor = Color(255, 255, 0)

TacRP.LoadAtt(ATT, "ammo_p2a1_frag")

------------------------------
-- #region ammo_p2a1_flashbang (P2A1 Zvezda Flash Shotshells)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_p2a1_flashbang.name"
ATT.FullName = "att.ammo_p2a1_flashbang.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_ks23_flashbang.png", "mips smooth")
ATT.Description = "att.ammo_p2a1_flashbang.desc"
ATT.Pros = {"att.procon.flash"}
ATT.Cons = {"att.procon.timedfuse", "att.procon.nonlethal"}

ATT.SortOrder = 11
ATT.Category = "ammo_p2a1"
ATT.InvAtt = "ammo_ks23_flashbang"
ATT.Override_Ammo = "buckshot"

ATT.Override_ShootEnt = "tacrp_proj_ks23_flashbang"
ATT.Override_ShootEntForce = 1500

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

ATT.ShellColor = Color(255, 150, 150)

TacRP.LoadAtt(ATT, "ammo_p2a1_flashbang")

------------------------------
-- #region ammo_p2a1_breach (P2A1 Breaching Shotshells)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_p2a1_breach.name"
ATT.FullName = "att.ammo_p2a1_breach.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_breaching.png", "mips smooth")
ATT.Description = "att.ammo_p2a1_breach.desc"
ATT.Pros = {"att.procon.doorbreach"}
ATT.Cons = {"att.procon.nonlethal"}

ATT.Category = "ammo_p2a1"
ATT.InvAtt = "ammo_shotgun_breach"
ATT.Override_Ammo = "buckshot"

ATT.SortOrder = 10
ATT.Override_ShootEntForce = 2000
ATT.Override_ShootEnt = "tacrp_proj_breach_slug"

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

ATT.ShellColor = Color(255, 125, 75)

TacRP.LoadAtt(ATT, "ammo_p2a1_breach")

------------------------------
-- #region ammo_p2a1_rocks (P2A1 Rock Shotshells)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_p2a1_rocks.name"
ATT.FullName = "att.ammo_p2a1_rocks.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_p2a1_rock.png", "mips smooth")
ATT.Description = "att.ammo_p2a1_rocks.desc"
ATT.Pros = {"att.procon.throwrocks"}
ATT.Cons = {"att.procon.throwrocks"}

ATT.Category = "ammo_p2a1"
ATT.Free = true

ATT.Override_Ammo = "buckshot"
ATT.SortOrder = 90
ATT.Override_Spread = 0.04
ATT.Override_ShotgunPelletSpread = 0.04
ATT.Override_ShootEnt = "tacrp_proj_nade_rock"
ATT.Override_Num = 4
ATT.Override_Damage_Max = 10
ATT.Override_Damage_Min = 10
ATT.Override_Sound_ShootAdd = "physics/concrete/boulder_impact_hard4.wav"
ATT.Mult_ShootEntForce = 1.5

-- ATT.Hook_PreShootEnt = function(wep, rocket)
--     rocket.AllowFunny = false
-- end
ATT.Hook_PostShootEnt = function(wep, rocket)
    rocket:SetPhysicsAttacker(wep:GetOwner(), 10)
    local phys = rocket:GetPhysicsObject()
    if phys:IsValid() then
        phys:AddAngleVelocity(VectorRand() * 1500)
    end
end

ATT.ShellColor = Color(120, 120, 120)

TacRP.LoadAtt(ATT, "ammo_p2a1_rock")

------------------------------
-- #region ammo_p2a1_confetti (P2A1 Confetti Shotshells)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_p2a1_confetti.name"
ATT.FullName = "att.ammo_p2a1_confetti.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_p2a1_confetti.png", "mips smooth")
ATT.Description = "att.ammo_p2a1_confetti.desc"
ATT.Pros = {}
ATT.Cons = {"att.procon.nonlethal"}

ATT.Category = "ammo_p2a1"
ATT.Free = true

ATT.SortOrder = 100
ATT.Override_Ammo = "buckshot"
ATT.Override_ShootEnt = false
ATT.Override_Num = 0
ATT.Override_Damage_Max = 0
ATT.Override_Damage_Min = 0
ATT.Override_Sound_Shoot = "^tacint_extras/p2a1/confetti.wav"
ATT.Override_Vol_Shoot = 80
ATT.Override_MuzzleEffect = false

ATT.Hook_PostShoot = function(wep)
    if IsFirstTimePredicted() then
        local fx = EffectData()
        fx:SetOrigin(wep:GetMuzzleOrigin() + wep:GetShootDir():Forward() * 32)
        fx:SetAngles(wep:GetShootDir())
        fx:SetScale(0.6)
        fx:SetMagnitude(500)
        util.Effect("tacrp_confetti", fx)
        wep:EmitSound("tacrp/kids_cheering.mp3", 80, 97, 0.8, CHAN_ITEM)
    end

end

ATT.ShellColor = Color(255, 0, 255)

TacRP.LoadAtt(ATT, "ammo_p2a1_confetti")

------------------------------
-- #region ammo_p2a1_signal (P2A1 Signal Flare Cartridges)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_p2a1_signal.name"
ATT.FullName = "att.ammo_p2a1_signal.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_40mm_concussion.png", "mips smooth")
ATT.Description = "att.ammo_p2a1_signal.desc"
ATT.Pros = {"stat.muzzlevelocity"}
ATT.Cons = {"att.procon.noexp"}

ATT.Category = "ammo_p2a1"

ATT.SortOrder = 0.1
ATT.Mult_ShootEntForce = 1.5
ATT.Override_ShootEnt = "tacrp_proj_p2a1_flare_signal"

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

ATT.ShellColor = Color(255, 0, 0)

TacRP.LoadAtt(ATT, "ammo_p2a1_signal")