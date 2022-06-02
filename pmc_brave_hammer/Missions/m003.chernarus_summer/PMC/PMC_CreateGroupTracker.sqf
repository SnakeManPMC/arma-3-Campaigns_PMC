
// 2022-06-02T16:13:00Z

private _grp = group (_this select 0);

private _m = format["pmc_marker_%1", round (random 1000)];
private _marker = createMarkerLocal [_m, (getPosATL leader _grp)];
_marker setMarkerColorLocal "ColorBlue";
_marker setMarkerTypeLocal "mil_dot";

sleep random 5;

waitUntil
{
	sleep 5;
	_marker setMarkerTextLocal format["Squad %1", count units _grp];
	_marker setMarkerPos getPosATL leader _grp;
	(!alive leader _grp);
};
