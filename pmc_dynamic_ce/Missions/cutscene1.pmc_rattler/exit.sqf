/* 2018-09-14 commented out as this must be some case of accidentally leaving exit.sqf into this CUTSCENE dir

// this is for the captured towns stuff.
PMC_City01="Default";
PMC_City02="Default";
PMC_City03="Default";
PMC_City04="Default";
PMC_City05="Default";
PMC_City06="Default";
PMC_City07="Default";
PMC_City08="Default";
PMC_City09="Default";
PMC_City10="Default";
PMC_City11="Default";
PMC_City12="Default";
PMC_City13="Default";
PMC_City14="Default";
PMC_City15="Default";
PMC_City16="Default";
PMC_City17="Default";
PMC_City18="Default";
PMC_City19="Default";
PMC_City20="Default";
PMC_City21="Default";
PMC_City22="Default";
PMC_City23="Default";
PMC_City24="Default";
PMC_City25="Default";
PMC_City26="Default";
PMC_City27="Default";
PMC_City28="Default";
PMC_City29="Default";
PMC_City30="Default";

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

PMC_Campaign_End=0; saveVar "PMC_Campaign_End";
PMC_East_KIA=0; saveVar "PMC_East_KIA";
PMC_West_KIA=0; saveVar "PMC_West_KIA";
PMC_AllTimeUsed=0; saveVar "PMC_AllTimeUsed";
PMC_passTime=0; saveVar "PMC_passTime";

PMC_ResupplyDay=1; saveVar "PMC_ResupplyDay";

// bn880 weather magic
startOvercast=-1; endOvercast=-1; fogStart=-1; fogEnd=-1;

//--- initServer
startOvercast=Random(12);
private _over=Random 4;
endOvercast=(((24 - startOvercast) /24) *_over) + startOvercast + 0.5;
fogStart=(Random (2)) + 1.5;
private _fover=1+Random 1;
fogEnd=_fover+fogStart;

saveVar "startOvercast";
saveVar "endOvercast";
saveVar "fogStart";
saveVar "fogEnd";
*/