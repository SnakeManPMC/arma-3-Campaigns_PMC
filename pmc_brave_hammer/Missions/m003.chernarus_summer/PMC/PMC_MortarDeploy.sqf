
// 2022-06-02T15:07:00Z
// launched from helo1 "transport unload" waypoint on activation.

private _pmc_string1 = "PMC_MortarDeploy: M252 mortar has been deployed.";

PMC_M252Mortar1 setPosATL [(getMarkerPos "lz" select 0), (getMarkerPos "lz" select 1), 0];

hintSilent _pmc_string1;
diag_log _pmc_string1;
