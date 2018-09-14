
pmcdb = false;
PMC_sdg = 0;
PMC_MLP = 5;
PMC_WLoopDelay = 10;
PMC_BodyCount = 0;

// this is how many EAST KIA's to have, to finish whole campaign
private _WinCampaignKIAs = 5000;

MaxEast = 20;

// win KIA's is how many EAST KIA's in current mission.
private _WinKills = (500 + random 200);

// vehicle arrays
PMC_EastTanks = ["CUP_O_BMP2_CHDKZ","CUP_O_ZSU23_TK","CUP_O_T55_TK","CUP_O_T72_RU","CUP_O_T72_RU"];
PMC_EastSoftV = ["CUP_O_UAZ_Unarmed_RU","CUP_O_BRDM2_CHDKZ","CUP_C_Ural_Civ_02"];
PMC_EastHelos = ["CUP_O_Mi8_RU","CUP_O_Mi24_P_RU","CUP_O_Ka52_RU"];
PMC_EastPlane = ["CUP_O_Su25_TKA"];

// east starting locations
private _es = [east_start1,east_start2,east_start3,east_start4];
private _evs = [east_vehstart1,east_vehstart2,east_vehstart3,east_vehstart4];
private _ehs = [east_helostart1,east_helostart2,east_helostart3,east_helostart4];

PMC_opforUnits = 0;
PMC_opforUnits = count aieast;
PMC_East_KIA = (PMC_opforUnits - count aieast);

PMC_WarRunning = true;

while {PMC_WarRunning} do
{
	// desperate attempt to track down enemy kills :)
	if ((PMC_opforUnits - count aieast) > PMC_East_KIA) then
	{
		PMC_East_KIA = (PMC_opforUnits - count aieast);
		saveVar "PMC_East_KIA";
	};
	
	/* this actually is supposed to end the campaign, if we have 500 enemy KIA's, we stop this
	 script and when player issues end mission command, the campaign goes to final cutscene.
	*/
	if (PMC_East_KIA > _WinCampaignKIAs) then
	{
		PMC_Campaign_End = 1;
		saveVar "PMC_Campaign_End";
		hint "You completed the campaign!";
		PAPABEAR sideChat "CONGRATULATIONS. YOU HAVE ACHIEVED OVER 5000 ENEMY KIAS. MISSION ACCOMPLISHED. OVER.";
		//"10" objStatus "DONE";
		["t10", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
		PMC_WarRunning = false;
	};
	
	// if east kills more than _WinKills
	if ((PMC_opforUnits - count aieast) > _WinKills) then
	{
		hint "Enemy seized attacks.";
		//"1" objStatus "DONE";
		["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
		PAPABEAR sideChat "Appears enemy has seized their attacks and are retreating. Over.";
		PMC_WarRunning = false;
	};
	
	/*
	create russians:
	- 2x soft vehicle with 4 men on board (like UAZ)
	- 9 men squad
	- tank, a single russian tank, huh?
	- 4 man specops team
	- sniper team
	*/

	if (count aieast < MaxEast) then
	{
		private _pos = getPos (selectRandom _evs);
		private _newPos = [_pos, 0, 100, 10, 0, 50, 0] call BIS_fnc_findSafePos;
		private _grp = [_newPos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Motorized" >> "CUP_O_RU_MotInfSquad")] call BIS_fnc_spawnGroup;

		_pos = getPos (selectRandom _evs);
		_newPos = [_pos, 0, 100, 10, 0, 50, 0] call BIS_fnc_findSafePos;
		_grp = [_newPos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Mechanized" >> "CUP_O_RU_MechInfSquad_2")] call BIS_fnc_spawnGroup;

		_pos = getPos (selectRandom _evs);
		_newPos = [_pos, 0, 100, 10, 0, 50, 0] call BIS_fnc_findSafePos;
		_grp = [_newPos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Armored" >> "CUP_O_RU_TankPlatoon")] call BIS_fnc_spawnGroup;

		_pos = getPos (selectRandom _ehs);
		_newPos = [_pos, 0, 100, 10, 0, 50, 0] call BIS_fnc_findSafePos;
		_grp = [_newPos, EAST, (configFile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Air" >> "CUP_O_RU_Mi24VSquadron")] call BIS_fnc_spawnGroup;
	};
	sleep 30;
};

[] execVM "PMC\PMC_MissionEnd.sqf";
