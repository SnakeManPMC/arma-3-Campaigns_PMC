
// objectives

/* this was "arty dead" trigger
condition: count units group howitzer1 == 0
activation: "1" objStatus "DONE"; arty_dead=true; "artyfound" setMarkerType "mil_dot"; "artyfound" setMarkerColor "colorgreen";
*/
[] spawn
{
	// condition
	waitUntil
	{
		sleep 5;
		(count units group howitzer1 == 0);
	};

	// activation
	//"1" objStatus "DONE";
	arty_dead = true;
	"artyfound" setMarkerType "mil_dot";
	"artyfound" setMarkerColor "colorgreen";
};

// init for arty dead trigger
arty_dead = false;
mortar_dead = false;

/* this was "arty dead!" trigger
condition: arty_dead && mortar_dead
activation: player sideRadio "Rartydead"; all_dead=true;
*/
[] spawn
{
	// condition
	waitUntil
	{
		sleep 5;
		(arty_dead && mortar_dead);
	};

	// activation
	player sideRadio "Rartydead";
	all_dead = true;
	sleep 15;
	[] execVM "PMC\PMC_MissionEnd.sqf";
};

/* this was "arty found" trigger
condition: {_x knowsabout artyleader > 0} count aiwest > 0
activation: "artyfound" setMarkerPos getpos artyleader; "artyfound" setMarkerType "Enemyartillery"; PAPABEAR sideChat "ARTILLERY SITE HAS BEEN FOUND. CHECK MAP. OVER.";
*/
[] spawn
{
	// condition
	waitUntil
	{
		sleep 5;
		({_x knowsAbout artyleader > 0} count aiwest > 0);
	};

	// activation
	"artyfound" setMarkerPos getpos artyleader;
	"artyfound" setMarkerType "Enemyartillery";
	PAPABEAR sideChat "ARTILLERY SITE HAS BEEN FOUND. CHECK MAP. OVER.";
};

/* this was "mortar dead" trigger
condition: count units group mortarg1 == 0
activation: "2" objStatus "DONE"; mortar_dead=true; "mortarfound" setMarkerType "mil_dot"; "mortarfound" setMarkerColor "colorgreen";
*/
[] spawn
{
	// condition
	waitUntil
	{
		sleep 5;
		(count units group mortarg1 == 0);
	};

	// activation
	//"2" objStatus "DONE";
	mortar_dead = true;
	"mortarfound" setMarkerType "mil_dot";
	"mortarfound" setMarkerColor "colorgreen";
};

/* this was "mortar found" trigger
condition: {_x knowsabout mortarleader > 0} count aiwest > 0
activation: "mortarfound" setMarkerPos getpos mortarleader; "mortarfound" setMarkerType "mortar"; PAPABEAR sideChat "MORTAR SITE HAS BEEN FOUND. CHECK MAP. OVER.";
*/
[] spawn
{
	// condition
	waitUntil
	{
		sleep 5;
		({_x knowsAbout mortarleader > 0} count aiwest > 0);
	};

	// activation
	"mortarfound" setMarkerPos getpos mortarleader;
	"mortarfound" setMarkerType "mortar";
	PAPABEAR sideChat "MORTAR SITE HAS BEEN FOUND. CHECK MAP. OVER.";
};
