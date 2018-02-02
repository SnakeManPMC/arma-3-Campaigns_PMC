// initialize the variables

private
[
	"_tmp"
];

// our team status
deleteStatus "racs1_1";
deleteStatus "racs1_2";
deleteStatus "racs1_3";
deleteStatus "racs1_4";
deleteStatus "racs1_5";
deleteStatus "racs1_6";
deleteStatus "racs1_7";
deleteStatus "racs1_8";
deleteStatus "racs1_9";
deleteStatus "racs1_10";
racs1 saveStatus "racs1_1";
r2 saveStatus "racs1_2";
r3 saveStatus "racs1_3";
r4 saveStatus "racs1_4";
r5 saveStatus "racs1_5";
r6 saveStatus "racs1_6";
r7 saveStatus "racs1_7";
r8 saveStatus "racs1_8";
r9 saveStatus "racs1_9";
r10 saveStatus "racs1_10";

// how many hours has passed
PMC_AllTimeUsed = 0;
saveVar "PMC_AllTimeUsed";

// create our gamelogic target list
_tmp = [] execVM "PMC\PMC_targets.sqf";
// apparently if this is NOT used, then it certainly wont work...
waitUntil {scriptDone _tmp};

// then process the targets
_a = 0;
while { _a < (count PMC_targets) } do
{
	_color = "COLORBLACK";
	call compile format ["PMC_City_%1 = _color", _a];
	call compile format ["saveVar 'PMC_City_%1'", _a];
	_a = _a + 1;
};

// artillery ammo, each round fired. array: artillery, mortars, mlrs
PMC_artyAmmo = [150, 200, 600];

PMC_Artillery_Rounds = 0;
PMC_Artillery_Rounds = PMC_artyAmmo select 0;
PMC_Mortar_Rounds = 0;
PMC_Mortar_Rounds = PMC_artyAmmo select 1;
PMC_MLRS_Rounds = 0;
PMC_MLRS_Rounds = PMC_artyAmmo select 2;

saveVar "PMC_Artillery_Rounds";
saveVar "PMC_Mortar_Rounds";
saveVar "PMC_MLRS_Rounds";

// killed and created stats
PMC_blufor = 0;
PMC_opfor = 0;
PMC_killedNum = 0;
saveVar "PMC_blufor";
saveVar "PMC_opfor";
saveVar "PMC_killedNum";

// load up some weapons & gear
// except that this wont work here, I had to put it to players init line...
//[] execVM "PMC\PMC_weaponPool.sqf";

// set the default time for resupply
PMC_LastResupplyTime = 1;
saveVar "PMC_LastResupplyTime";
// random days before next resupply
PMC_ResupplyDays = random 10;
saveVar "PMC_ResupplyDays";

// save location
PMC_BaseLocationPos = getPos player;
saveVar "PMC_BaseLocationPos";
