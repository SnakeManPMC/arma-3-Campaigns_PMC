
PMC_army1 loadStatus "army1_13";
PMC_army1 setDamage 0;
PMC_army2 loadStatus "army2_13";
PMC_army3 loadStatus "army3_13";
PMC_army4 loadStatus "army4_13";
PMC_army5 loadStatus "army5_13";
PMC_army6 loadStatus "army6_13";
PMC_army7 loadStatus "army7_13";
PMC_army8 loadStatus "army8_13";
PMC_army9 loadStatus "army9_13";
PMC_army10 loadStatus "army10_13";

{
	if (!alive _x) then
	{
		deleteVehicle _x;
	};
	_x setDamage 0;
} forEach [PMC_army2,PMC_army3,PMC_army4,PMC_army5,PMC_army6,PMC_army7,PMC_army8,PMC_army9,PMC_army10];

// PMC_eveh_1 through 7
PMC_eveh_1 setPos [PMC_eveh_1_x,PMC_eveh_1_y];
PMC_eveh_1 setDir PMC_eveh_1_dir;
PMC_eveh_1 loadStatus "PMC_eveh_1_13";

PMC_eveh_2 setPos [PMC_eveh_2_x,PMC_eveh_2_y];
PMC_eveh_2 setDir PMC_eveh_2_dir;
PMC_eveh_2 loadStatus "PMC_eveh_2_13";

PMC_eveh_3 setPos [PMC_eveh_3_x,PMC_eveh_3_y];
PMC_eveh_3 setDir PMC_eveh_3_dir;
PMC_eveh_3 loadStatus "PMC_eveh_3_13";

PMC_eveh_4 setPos [PMC_eveh_4_x,PMC_eveh_4_y];
PMC_eveh_4 setDir PMC_eveh_4_dir;
PMC_eveh_4 loadStatus "PMC_eveh_4_13";

PMC_eveh_5 setPos [PMC_eveh_5_x,PMC_eveh_5_y];
PMC_eveh_5 setDir PMC_eveh_5_dir;
PMC_eveh_5 loadStatus "PMC_eveh_5_13";

PMC_eveh_6 setPos [PMC_eveh_6_x,PMC_eveh_6_y];
PMC_eveh_6 setDir PMC_eveh_6_dir;
PMC_eveh_6 loadStatus "PMC_eveh_6_13";

PMC_eveh_7 setPos [PMC_eveh_7_x,PMC_eveh_7_y];
PMC_eveh_7 setDir PMC_eveh_7_dir;
PMC_eveh_7 loadStatus "PMC_eveh_7_13";

[] execVM "PMC\PMC_Mission_Start.sqf";