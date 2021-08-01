// 0 = execVM "PMC\PMC_Player_at_Hideout.sqf";

["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
sleep 7;

// this was exit.sqf previously, had to rename it so it wont be ran twice. long story.
[] execVM "PMC\PMC_End_of_mission.sqf";
[] execVM "PMC\movie-end.sqf";
