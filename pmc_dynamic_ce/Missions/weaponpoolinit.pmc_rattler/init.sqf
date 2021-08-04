
[] execVM "PMC\PMC_weaponPool.sqf";

// this is for the captured towns stuff.
PMC_City01=getMarkerColor "pmc1";
PMC_City02=getMarkerColor "pmc2";
PMC_City03=getMarkerColor "pmc3";
PMC_City04=getMarkerColor "pmc4";
PMC_City05=getMarkerColor "pmc5";
PMC_City06=getMarkerColor "pmc6";
PMC_City07=getMarkerColor "pmc7";
PMC_City08=getMarkerColor "pmc8";
PMC_City09=getMarkerColor "pmc9";
PMC_City10=getMarkerColor "pmc10";
PMC_City11=getMarkerColor "pmc11";
PMC_City12=getMarkerColor "pmc12";
PMC_City13=getMarkerColor "pmc13";
PMC_City14=getMarkerColor "pmc14";
PMC_City15=getMarkerColor "pmc15";
PMC_City16=getMarkerColor "pmc16";
PMC_City17=getMarkerColor "pmc17";
PMC_City18=getMarkerColor "pmc18";
PMC_City19=getMarkerColor "pmc19";
PMC_City20=getMarkerColor "pmc20";
PMC_City21=getMarkerColor "pmc21";
PMC_City22=getMarkerColor "pmc22";
PMC_City23=getMarkerColor "pmc23";
PMC_City24=getMarkerColor "pmc24";
PMC_City25=getMarkerColor "pmc25";
PMC_City26=getMarkerColor "pmc26";
PMC_City27=getMarkerColor "pmc27";
PMC_City28=getMarkerColor "pmc28";
PMC_City29=getMarkerColor "pmc29";
PMC_City30=getMarkerColor "pmc30";

saveVar "PMC_City01";
saveVar "PMC_City02";
saveVar "PMC_City03";
saveVar "PMC_City04";
saveVar "PMC_City05";
saveVar "PMC_City06";
saveVar "PMC_City07";
saveVar "PMC_City08";
saveVar "PMC_City09";
saveVar "PMC_City10";
saveVar "PMC_City11";
saveVar "PMC_City12";
saveVar "PMC_City13";
saveVar "PMC_City14";
saveVar "PMC_City15";
saveVar "PMC_City16";
saveVar "PMC_City17";
saveVar "PMC_City18";
saveVar "PMC_City19";
saveVar "PMC_City20";
saveVar "PMC_City21";
saveVar "PMC_City22";
saveVar "PMC_City23";
saveVar "PMC_City24";
saveVar "PMC_City25";
saveVar "PMC_City26";
saveVar "PMC_City27";
saveVar "PMC_City28";
saveVar "PMC_City29";
saveVar "PMC_City30";

// infantry
assault1_x=getpos leader assault1 select 0;
assault1_y=getpos leader assault1 select 1;
saveVar "assault1_x";
saveVar "assault1_y";
assault2_x=getpos leader assault2 select 0;
assault2_y=getpos leader assault2 select 1;
saveVar "assault2_x";
saveVar "assault2_y";
assault3_x=getpos leader assault3 select 0;
assault3_y=getpos leader assault3 select 1;
saveVar "assault3_x";
saveVar "assault3_y";
assault4_x=getpos leader assault4 select 0;
assault4_y=getpos leader assault4 select 1;
saveVar "assault4_x";
saveVar "assault4_y";
assault5_x=getpos leader assault5 select 0;
assault5_y=getpos leader assault5 select 1;
saveVar "assault5_x";
saveVar "assault5_y";

// abrams and bradleys
ustanks1_x=getpos leader ustanks1 select 0;
ustanks1_y=getpos leader ustanks1 select 1;
saveVar "ustanks1_x";
saveVar "ustanks1_y";
ustanks2_x=getpos leader ustanks2 select 0;
ustanks2_y=getpos leader ustanks2 select 1;
saveVar "ustanks2_x";
saveVar "ustanks2_y";
ustanks3_x=getpos leader ustanks3 select 0;
ustanks3_y=getpos leader ustanks3 select 1;
saveVar "ustanks3_x";
saveVar "ustanks3_y";
ustanks4_x=getpos leader ustanks4 select 0;
ustanks4_y=getpos leader ustanks4 select 1;
saveVar "ustanks4_x";
saveVar "ustanks4_y";
ustanks5_x=getpos leader ustanks5 select 0;
ustanks5_y=getpos leader ustanks5 select 1;
saveVar "ustanks5_x";
saveVar "ustanks5_y";

// rangers and seals
ranger1_x=getpos leader ranger1 select 0;
ranger1_y=getpos leader ranger1 select 1;
saveVar "ranger1_x";
saveVar "ranger1_y";
ranger2_x=getpos leader ranger2 select 0;
ranger2_y=getpos leader ranger2 select 1;
saveVar "ranger2_x";
saveVar "ranger2_y";
ranger3_x=getpos leader ranger3 select 0;
ranger3_y=getpos leader ranger3 select 1;
saveVar "ranger3_x";
saveVar "ranger3_y";
seal1_x=getpos leader seal1 select 0;
seal1_y=getpos leader seal1 select 1;
saveVar "seal1_x";
saveVar "seal1_y";
seal2_x=getpos leader seal2 select 0;
seal2_y=getpos leader seal2 select 1;
saveVar "seal2_x";
saveVar "seal2_y";

// mortars and M109's
usarty1_x=getpos leader usarty1 select 0;
usarty1_y=getpos leader usarty1 select 1;
saveVar "usarty1_x";
saveVar "usarty1_y";
usarty2_x=getpos leader usarty2 select 0;
usarty2_y=getpos leader usarty2 select 1;
saveVar "usarty2_x";
saveVar "usarty2_y";
usarty3_x=getpos leader usarty3 select 0;
usarty3_y=getpos leader usarty3 select 1;
saveVar "usarty3_x";
saveVar "usarty3_y";

// Our own squad posit + status
hqteam1_x = getpos leader hqteam select 0;
hqteam1_y = getpos leader hqteam select 1;
saveVar "hqteam1_x";
saveVar "hqteam1_y";
units hqteam select 0 saveStatus "hqt1";
units hqteam select 1 saveStatus "hqt2";
units hqteam select 2 saveStatus "hqt3";
units hqteam select 3 saveStatus "hqt4";
units hqteam select 4 saveStatus "hqt5";
units hqteam select 5 saveStatus "hqt6";
units hqteam select 6 saveStatus "hqt7";
units hqteam select 7 saveStatus "hqt8";
units hqteam select 8 saveStatus "hqt9";

// time changes between missions.
PMC_passTime = 0;
// this is the time used in this mission.
// time = seconds. skiptime = hours.
PMC_AllTimeUsed = 0;
PMC_LastResupplyTime = 0;
saveVar "PMC_passTime";
saveVar "PMC_AllTimeUsed";
saveVar "PMC_LastResupplyTime";
PMC_ResupplyDay = 0;
saveVar "PMC_ResupplyDay";
// 2021-08-04T16:04:00Z why this is saveVar'red I have no clue ;)
PMC_Campaign_End = false;
saveVar "PMC_Campaign_End";

sleep 3;
endcut = true;
