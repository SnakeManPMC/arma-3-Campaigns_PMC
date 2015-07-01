
PMC_Create_RHS_Soviet_Army_Squad =
{
	private
	[
		"_grp",
		"_respawnpoint"
	];

	_respawnpoint = _this select 0;

	_grp = createGroup east;
	waitUntil {!(isNull _grp)};

	"rhs_msv_sergeant" createUnit [_respawnpoint, _grp, "", 0.5, "SERGEANT"];
	"rhs_msv_junior_sergeant" createUnit [_respawnpoint, _grp, "", 0.44, "SERGEANT"];
	"rhs_msv_grenadier" createUnit [_respawnpoint, _grp, "", 0.44, "PRIVATE"];
	"rhs_msv_rifleman" createUnit [_respawnpoint, _grp, "", 0.44, "CORPORAL"];
	"rhs_msv_machinegunner" createUnit [_respawnpoint, _grp, "", 0.44, "PRIVATE"];
	"rhs_msv_at" createUnit [_respawnpoint, _grp, "", 0.44, "CORPORAL"];
	"rhs_msv_strelok_rpg_assist" createUnit [_respawnpoint, _grp, "", 0.44, "PRIVATE"];
	"rhs_msv_rifleman" createUnit [_respawnpoint, _grp, "", 0.44, "CORPORAL"];
	"rhs_msv_rifleman" createUnit [_respawnpoint, _grp, "", 0.44, "PRIVATE"];
	"rhs_msv_medic" createUnit [_respawnpoint, _grp, "", 0.44, "CORPORAL"];

	_grp
};
