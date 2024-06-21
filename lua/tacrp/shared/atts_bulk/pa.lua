local ATT

ATT = {}

ATT.PrintName = "4x"
ATT.Icon = Material("entities/tacrp_att_optic_8x.png", "mips smooth")
ATT.Description = "Reduced scope magnification."
ATT.Pros = {"att.zoom.4"}

ATT.Free = true

ATT.Category = "optic_sako85"

ATT.SortOrder = 1

ATT.Override_ScopeFOV = 90 / 4

TacRP.LoadAtt(ATT, "optic_sako85_4x")

ATT = {}

ATT.PrintName = "8x"
ATT.Icon = Material("entities/tacrp_att_optic_8x.png", "mips smooth")
ATT.Description = "Increased scope magnification."
ATT.Pros = {"att.zoom.8"}

ATT.Free = true

ATT.Category = "optic_sako85"

ATT.SortOrder = 2

ATT.Override_ScopeFOV = 90 / 8

TacRP.LoadAtt(ATT, "optic_sako85_8x")

ATT = {}

ATT.PrintName = "Iron Sights"
ATT.Icon = Material("entities/tacrp_att_optic_irons.png", "mips smooth")
ATT.Description = "Remove scope for faster aim and better mobility."
ATT.Pros = {"rating.handling", "rating.mobility"}
ATT.Cons = {"att.procon.noscope"}

ATT.Free = true

ATT.InstalledElements = {"irons"}

ATT.Category = "optic_sako85"

ATT.SortOrder = 0

ATT.Override_ScopeHideWeapon = false
ATT.Override_ScopeOverlay = false
ATT.Override_ScopeFOV = 90 / 1.25
ATT.Override_ScopeLevels = 1

ATT.Add_AimDownSightsTime = -0.05
ATT.Add_SprintToFireTime = -0.04
ATT.Add_SightedSpeedMult = 0.1
ATT.Add_ShootingSpeedMult = 0.05
ATT.Mult_HipFireSpreadPenalty = 0.75

TacRP.LoadAtt(ATT, "optic_sako85_irons")

ATT = {}

ATT.PrintName = ".222 Win"
ATT.FullName = "Sako 85 .222 Winchester Mod Kit"
ATT.Icon = Material("entities/tacrp_pa_sako85.png", "mips smooth")
ATT.Description = "Load intermediate rounds with reduced recoil and lethality."
ATT.Pros = {"stat.rpm", "stat.recoilkick", "stat.clipsize"}
ATT.Cons = {"stat.damage"}

ATT.Category = "ammo_sako85"

ATT.SortOrder = 1

ATT.Override_Ammo = "smg1"
ATT.Override_Sound_Shoot = "^tacint_extras/sako85/m16_fire_01.wav"

ATT.Mult_RPM = 1.2
ATT.Mult_ShootTimeMult = 1 / 1.2

ATT.Mult_Damage_Max = 0.85
ATT.Mult_Damage_Min = 0.85

ATT.Mult_RecoilKick = 0.5
ATT.Mult_Range_Max = 1.25
ATT.Add_ClipSize = 1 -- not realism but who cares

ATT.Override_BodyDamageMultipliersExtra = {
    [HITGROUP_STOMACH] = 0.85,
}

TacRP.LoadAtt(ATT, "ammo_sako85_222")

ATT = {}

ATT.PrintName = ".300 Win Mag"
ATT.FullName = "Sako 85 .300 Winchester Magnum Mod Kit"
ATT.Icon = Material("entities/tacrp_pa_sako85.png", "mips smooth")
ATT.Description = "Load magnum rounds for improved lethality."
ATT.Pros = {"stat.damage"}
ATT.Cons = {"stat.recoilkick", "stat.rpm", "stat.clipsize"}

ATT.Category = "ammo_sako85"

ATT.SortOrder = 2

ATT.Override_Ammo = "357"
ATT.Override_Sound_Shoot = "^tacint_extras/sako85/win1892_fire_01.wav"

ATT.Mult_RPM = 0.9
ATT.Mult_ShootTimeMult = 1 / 0.9

ATT.Mult_Damage_Max = 1.16
ATT.Mult_Damage_Min = 1.16

ATT.Add_RecoilKick = 1
ATT.Add_ClipSize = -1

ATT.Override_BodyDamageMultipliersExtra = {
    [HITGROUP_STOMACH] = 0.9,
}

TacRP.LoadAtt(ATT, "ammo_sako85_300mag")

ATT = {}

ATT.PrintName = "Scope"
ATT.FullName = "SVT-40 PU Scope"
ATT.Icon = Material("entities/tacrp_att_optic_svt_pu.png", "mips smooth")
ATT.Description = "Medium power scope with a weapon-specific mount."
ATT.Pros = {"att.zoom.5"}
ATT.Cons = {"stat.aimdownsights"}

ATT.Category = {"optic_pu"}

ATT.SortOrder = 5

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/pu.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 5

ATT.Add_AimDownSightsTime = 0.04

ATT.InstalledElements = {"scope"}

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "optic_svt_pu")

------------------------------
-- #region ammo_m202_smoke
------------------------------
ATT = {}

ATT.PrintName = "Smoke"
ATT.Icon = Material("entities/tacrp_att_ammo_m202.png", "mips smooth")
ATT.Description = "Rocket that produces a concealing smokescreen on impact."
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
-- #region ammo_m202_apers
------------------------------
ATT = {}

ATT.PrintName = "Hornet"
ATT.Icon = Material("entities/tacrp_att_ammo_m202.png", "mips smooth")
ATT.Description = "Airburst fragmentation rockets for direct fire anti-personnel use."
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
-- #region ammo_m202_harpoon
------------------------------
ATT = {}

ATT.PrintName = "Harpoon"
ATT.Icon = Material("entities/tacrp_att_ammo_m202.png", "mips smooth")
ATT.Description = "Launch fiery harpoons that do tremendous damage on impact."
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