/*

	addAction called soldier creator for players group.

*/

private
[
	"_grp",
	"_p"
];

_grp = group player;
_p = getPos player;

while {count units _grp < 10} do
{
	"CUP_I_GUE_Soldier_GL" createUnit [_p, _grp, "removeAllweapons this;", 0, "PRIVATE"];
/*
unarmed biatches...
	u addMagazine "CUP_30Rnd_556x45_Stanag";
	u addMagazine "CUP_30Rnd_556x45_Stanag";
	u addMagazine "CUP_30Rnd_556x45_Stanag";
	u addMagazine "CUP_30Rnd_556x45_Stanag";
	u addWeapon "CUP_M16A2";
*/
};
