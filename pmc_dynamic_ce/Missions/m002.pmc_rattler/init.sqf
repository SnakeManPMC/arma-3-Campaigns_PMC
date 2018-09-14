
[] execVM "briefing.sqf";

PAPABEAR = [West, "HQ"];

PMC_corpses = [];
PMC_groups = [];
PMC_targets = [pole1,pole2,pole3,pole4,pole5,pole6,pole7,pole8,pole9,pole10,pole11,pole12,pole13,pole14,pole15,pole16,pole17,pole18,pole19,pole20,pole21,pole22,pole23,pole24,pole25,pole26,pole27,pole28,pole29,pole30];
West_ControList = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
West_AssignList = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
East_ControList = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
East_AssignList = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

{_x setmarkersize [100,100]} foreach ["pmc1","pmc2","pmc3","pmc4","pmc5","pmc6","pmc7","pmc8","pmc9","pmc10"];
{_x setmarkersize [100,100]} foreach ["pmc11","pmc12","pmc13","pmc14","pmc15","pmc16","pmc17","pmc18","pmc19","pmc20"];
{_x setmarkersize [100,100]} foreach ["pmc21","pmc22","pmc23","pmc24","pmc25","pmc26","pmc27","pmc28","pmc29","pmc30"];

eastguys = 0;
westguys = 0;

// new city occupation colors
"pmc1" setMarkerColor PMC_City01; ["pmc1"] execVM "PMC\PMC_addDefenses.sqf";
"pmc2" setMarkerColor PMC_City02; ["pmc2"] execVM "PMC\PMC_addDefenses.sqf";
"pmc3" setMarkerColor PMC_City03; ["pmc3"] execVM "PMC\PMC_addDefenses.sqf";
"pmc4" setMarkerColor PMC_City04; ["pmc4"] execVM "PMC\PMC_addDefenses.sqf";
"pmc5" setMarkerColor PMC_City05; ["pmc5"] execVM "PMC\PMC_addDefenses.sqf";
"pmc6" setMarkerColor PMC_City06; ["pmc6"] execVM "PMC\PMC_addDefenses.sqf";
"pmc7" setMarkerColor PMC_City07; ["pmc7"] execVM "PMC\PMC_addDefenses.sqf";
"pmc8" setMarkerColor PMC_City08; ["pmc8"] execVM "PMC\PMC_addDefenses.sqf";
"pmc9" setMarkerColor PMC_City09; ["pmc9"] execVM "PMC\PMC_addDefenses.sqf";
"pmc10" setMarkerColor PMC_City10; ["pmc10"] execVM "PMC\PMC_addDefenses.sqf";
"pmc11" setMarkerColor PMC_City11; ["pmc11"] execVM "PMC\PMC_addDefenses.sqf";
"pmc12" setMarkerColor PMC_City12; ["pmc12"] execVM "PMC\PMC_addDefenses.sqf";
"pmc13" setMarkerColor PMC_City13; ["pmc13"] execVM "PMC\PMC_addDefenses.sqf";
"pmc14" setMarkerColor PMC_City14; ["pmc14"] execVM "PMC\PMC_addDefenses.sqf";
"pmc15" setMarkerColor PMC_City15; ["pmc15"] execVM "PMC\PMC_addDefenses.sqf";
"pmc16" setMarkerColor PMC_City16; ["pmc16"] execVM "PMC\PMC_addDefenses.sqf";
"pmc17" setMarkerColor PMC_City17; ["pmc17"] execVM "PMC\PMC_addDefenses.sqf";
"pmc18" setMarkerColor PMC_City18; ["pmc18"] execVM "PMC\PMC_addDefenses.sqf";
"pmc19" setMarkerColor PMC_City19; ["pmc19"] execVM "PMC\PMC_addDefenses.sqf";
"pmc20" setMarkerColor PMC_City20; ["pmc20"] execVM "PMC\PMC_addDefenses.sqf";
"pmc21" setMarkerColor PMC_City21; ["pmc21"] execVM "PMC\PMC_addDefenses.sqf";
"pmc22" setMarkerColor PMC_City22; ["pmc22"] execVM "PMC\PMC_addDefenses.sqf";
"pmc23" setMarkerColor PMC_City23; ["pmc23"] execVM "PMC\PMC_addDefenses.sqf";
"pmc24" setMarkerColor PMC_City24; ["pmc24"] execVM "PMC\PMC_addDefenses.sqf";
"pmc25" setMarkerColor PMC_City25; ["pmc25"] execVM "PMC\PMC_addDefenses.sqf";
"pmc26" setMarkerColor PMC_City26; ["pmc26"] execVM "PMC\PMC_addDefenses.sqf";
"pmc27" setMarkerColor PMC_City27; ["pmc27"] execVM "PMC\PMC_addDefenses.sqf";
"pmc28" setMarkerColor PMC_City28; ["pmc28"] execVM "PMC\PMC_addDefenses.sqf";
"pmc29" setMarkerColor PMC_City29; ["pmc29"] execVM "PMC\PMC_addDefenses.sqf";
"pmc30" setMarkerColor PMC_City30; ["pmc30"] execVM "PMC\PMC_addDefenses.sqf";

/* mortar stuff from CoC Dinger
?local mortarg1:[] exec "initgroup.sqs"
?local mortarg1:[] exec "enemytacfire.sqs"
*/
if ( PMC_AllTimeUsed > (PMC_LastResupplyTime + 48) ) then
{
	PMC_ResupplyDay = 1;
};

if (PMC_ResupplyDay == 1) then
{
	[] execVM "PMC\PMC_weaponPool.sqf";
	PMC_ResupplyDay = 0;
	saveVar "PMC_ResupplyDay";
	PMC_LastResupplyTime = (time / 3600);
	saveVar "PMC_LastResupplyTime";
};

// load my squad up
units hqteam select 0 loadStatus "hqt1";
units hqteam select 1 loadStatus "hqt2";
units hqteam select 2 loadStatus "hqt3";
units hqteam select 3 loadStatus "hqt4";
units hqteam select 4 loadStatus "hqt5";
units hqteam select 5 loadStatus "hqt6";
units hqteam select 6 loadStatus "hqt7";
units hqteam select 7 loadStatus "hqt8";
units hqteam select 8 loadStatus "hqt9";

skipTime PMC_AllTimeUsed;

// weather script here

[] execVM "PMC\PMC_setPos_Troops.sqf";
sleep 5;
{_x addEventHandler [{killed}, {_this execVM "PMC\PMC_killed.sqf"}]} forEach aiwest;
[] exec "war.sqs";
sleep 10;
[] execVM "PMC\PMC_MoveGroups.sqf";
[] execVM "PMC\PMC_corpses.sqf";
[artyleader] execVM "PMC\PMC_ArtyDefence.sqf";
sleep 5;
[mortarleader] execVM "PMC\PMC_ArtyDefence.sqf";
