
private
[
	"_tmp"
];

_tmp = [] execVM "PMC\PMC_Mission_Start.sqf";
waitUntil {scriptDone _tmp};

[] execVM "PMC\PMC_init.sqf";

// create some objectives which are written into briefing.html
[] execVM "PMC\PMC_objectives.sqf";
