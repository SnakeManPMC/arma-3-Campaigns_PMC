
PMC_Create_RHS_US_Army_Squad =
{
	private
	[
		"_grp",
		"_respawnpoint"
	];

	_respawnpoint = _this select 0;

	_grp = createGroup west;
	waitUntil {!(isNull _grp)};

	"rhsusf_army_ocp_squadleader" createUnit [_respawnpoint, _grp, "", 0.5, "SERGEANT"];
	"rhsusf_army_ocp_teamleader" createUnit [_respawnpoint, _grp, "", 0.44, "CORPORAL"];
	"rhsusf_army_ocp_rifleman" createUnit [_respawnpoint, _grp, "", 0.44, "PRIVATE"];
	"rhsusf_army_ocp_autorifleman" createUnit [_respawnpoint, _grp, "", 0.44, "CORPORAL"];
	"rhsusf_army_ocp_grenadier" createUnit [_respawnpoint, _grp, "", 0.44, "PRIVATE"];
	"rhsusf_army_ocp_teamleader" createUnit [_respawnpoint, _grp, "", 0.44, "CORPORAL"];
	"rhsusf_army_ocp_autorifleman" createUnit [_respawnpoint, _grp, "", 0.44, "PRIVATE"];
	"rhsusf_army_ocp_grenadier" createUnit [_respawnpoint, _grp, "", 0.44, "CORPORAL"];
	"rhsusf_army_ocp_riflemanat" createUnit [_respawnpoint, _grp, "", 0.44, "PRIVATE"];

	_grp
};
