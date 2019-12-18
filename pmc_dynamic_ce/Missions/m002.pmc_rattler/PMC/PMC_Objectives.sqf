
// objectives

[] spawn
{
	// condition
	waitUntil
	{
		sleep 5;
		(count units group howitzer1 == 0);
	};

	// activation
	arty_dead = true;
	"artyfound" setMarkerType "mil_dot";
	"artyfound" setMarkerColor "colorgreen";
};

// init for arty dead trigger
arty_dead = false;
mortar_dead = false;

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

[] spawn
{
	// condition
	waitUntil
	{
		sleep 5;
		(count units group mortarg1 == 0);
	};

	// activation
	mortar_dead = true;
	"mortarfound" setMarkerType "mil_dot";
	"mortarfound" setMarkerColor "colorgreen";
};

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
