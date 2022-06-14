
// 2022-06-14T03:13:00Z
// stuff moved from obsolete exit.sqf event script, vehicle position stuff is not working.

x = PMC_army1 saveStatus "army1_13";
x = PMC_army2 saveStatus "army2_13";
x = PMC_army3 saveStatus "army3_13";
x = PMC_army4 saveStatus "army4_13";
x = PMC_army5 saveStatus "army5_13";
x = PMC_army6 saveStatus "army6_13";
x = PMC_army7 saveStatus "army7_13";
x = PMC_army8 saveStatus "army8_13";
x = PMC_army9 saveStatus "army9_13";
x = PMC_army10 saveStatus "army10_13";

// uaz ags-30
PMC_eveh_1_x = getPos PMC_eveh_1 select 0; saveVar "PMC_eveh_1_x";
PMC_eveh_1_y = getPos PMC_eveh_1 select 1; saveVar "PMC_eveh_1_y";
PMC_eveh_1_dir = getDir PMC_eveh_1; saveVar "PMC_eveh_1_dir";
x = PMC_eveh_1 saveStatus "PMC_eveh_1_13";

// pick-up
PMC_eveh_2_x = getPos PMC_eveh_2 select 0; saveVar "PMC_eveh_2_x";
PMC_eveh_2_y = getPos PMC_eveh_2 select 1; saveVar "PMC_eveh_2_y";
PMC_eveh_2_dir = getDir PMC_eveh_2; saveVar "PMC_eveh_2_dir";
x = PMC_eveh_2 saveStatus "PMC_eveh_2_13";

// ural fuel
PMC_eveh_3_x = getPos PMC_eveh_3 select 0; saveVar "PMC_eveh_3_x";
PMC_eveh_3_y = getPos PMC_eveh_3 select 1; saveVar "PMC_eveh_3_y";
PMC_eveh_3_dir = getDir PMC_eveh_3; saveVar "PMC_eveh_3_dir";
x = PMC_eveh_3 saveStatus "PMC_eveh_3_13";

// uaz with machine gun
PMC_eveh_4_x = getPos PMC_eveh_4 select 0; saveVar "PMC_eveh_4_x";
PMC_eveh_4_y = getPos PMC_eveh_4 select 1; saveVar "PMC_eveh_4_y";
PMC_eveh_4_dir = getDir PMC_eveh_4; saveVar "PMC_eveh_4_dir";
x = PMC_eveh_4 saveStatus "PMC_eveh_4_13";

// uaz ags-30
PMC_eveh_5_x = getPos PMC_eveh_5 select 0; saveVar "PMC_eveh_5_x";
PMC_eveh_5_y = getPos PMC_eveh_5 select 1; saveVar "PMC_eveh_5_y";
PMC_eveh_5_dir = getDir PMC_eveh_5; saveVar "PMC_eveh_5_dir";
x = PMC_eveh_5 saveStatus "PMC_eveh_5_13";

// bmp2
PMC_eveh_6_x = getPos PMC_eveh_6 select 0; saveVar "PMC_eveh_6_x";
PMC_eveh_6_y = getPos PMC_eveh_6 select 1; saveVar "PMC_eveh_6_y";
PMC_eveh_6_dir = getDir PMC_eveh_6; saveVar "PMC_eveh_6_dir";
x = PMC_eveh_6 saveStatus "PMC_eveh_6_13";

// bmp2
PMC_eveh_7_x = getPos PMC_eveh_7 select 0; saveVar "PMC_eveh_7_x";
PMC_eveh_7_y = getPos PMC_eveh_7 select 1; saveVar "PMC_eveh_7_y";
PMC_eveh_7_dir = getDir PMC_eveh_7; saveVar "PMC_eveh_7_dir";
x = PMC_eveh_7 saveStatus "PMC_eveh_7_13";
