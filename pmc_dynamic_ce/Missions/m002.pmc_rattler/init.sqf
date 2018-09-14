
[] execVM "briefing.sqf";

PAPABEAR=[West,"HQ"];

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

eastguys=0;westguys=0;

// new city occupation colors
"pmc1" setMarkerColor PMC_City01; ["pmc1"] exec "add-defenses.sqs";
"pmc2" setMarkerColor PMC_City02; ["pmc2"] exec "add-defenses.sqs";
"pmc3" setMarkerColor PMC_City03; ["pmc3"] exec "add-defenses.sqs";
"pmc4" setMarkerColor PMC_City04; ["pmc4"] exec "add-defenses.sqs";
"pmc5" setMarkerColor PMC_City05; ["pmc5"] exec "add-defenses.sqs";
"pmc6" setMarkerColor PMC_City06; ["pmc6"] exec "add-defenses.sqs";
"pmc7" setMarkerColor PMC_City07; ["pmc7"] exec "add-defenses.sqs";
"pmc8" setMarkerColor PMC_City08; ["pmc8"] exec "add-defenses.sqs";
"pmc9" setMarkerColor PMC_City09; ["pmc9"] exec "add-defenses.sqs";
"pmc10" setMarkerColor PMC_City10; ["pmc10"] exec "add-defenses.sqs";
"pmc11" setMarkerColor PMC_City11; ["pmc11"] exec "add-defenses.sqs";
"pmc12" setMarkerColor PMC_City12; ["pmc12"] exec "add-defenses.sqs";
"pmc13" setMarkerColor PMC_City13; ["pmc13"] exec "add-defenses.sqs";
"pmc14" setMarkerColor PMC_City14; ["pmc14"] exec "add-defenses.sqs";
"pmc15" setMarkerColor PMC_City15; ["pmc15"] exec "add-defenses.sqs";
"pmc16" setMarkerColor PMC_City16; ["pmc16"] exec "add-defenses.sqs";
"pmc17" setMarkerColor PMC_City17; ["pmc17"] exec "add-defenses.sqs";
"pmc18" setMarkerColor PMC_City18; ["pmc18"] exec "add-defenses.sqs";
"pmc19" setMarkerColor PMC_City19; ["pmc19"] exec "add-defenses.sqs";
"pmc20" setMarkerColor PMC_City20; ["pmc20"] exec "add-defenses.sqs";
"pmc21" setMarkerColor PMC_City21; ["pmc21"] exec "add-defenses.sqs";
"pmc22" setMarkerColor PMC_City22; ["pmc22"] exec "add-defenses.sqs";
"pmc23" setMarkerColor PMC_City23; ["pmc23"] exec "add-defenses.sqs";
"pmc24" setMarkerColor PMC_City24; ["pmc24"] exec "add-defenses.sqs";
"pmc25" setMarkerColor PMC_City25; ["pmc25"] exec "add-defenses.sqs";
"pmc26" setMarkerColor PMC_City26; ["pmc26"] exec "add-defenses.sqs";
"pmc27" setMarkerColor PMC_City27; ["pmc27"] exec "add-defenses.sqs";
"pmc28" setMarkerColor PMC_City28; ["pmc28"] exec "add-defenses.sqs";
"pmc29" setMarkerColor PMC_City29; ["pmc29"] exec "add-defenses.sqs";
"pmc30" setMarkerColor PMC_City30; ["pmc30"] exec "add-defenses.sqs";

/* mortar stuff from CoC Dinger
?local mortarg1:[] exec "initgroup.sqs"
?local mortarg1:[] exec "enemytacfire.sqs"
*/
if ( PMC_AllTimeUsed > (PMC_LastResupplyTime + 48) ) then { PMC_ResupplyDay=1; };
if (PMC_ResupplyDay==1) then { [] execVM "PMC_weaponPool.sqf"; PMC_ResupplyDay=0; saveVar "PMC_ResupplyDay"; PMC_LastResupplyTime=(time/3600); saveVar "PMC_LastResupplyTime"; };

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

[] exec "setpos_troops.sqs";
sleep 5;
{_x addEventHandler [{killed}, {_this exec "killed.sqs"}]} forEach aiwest;
[] exec "war.sqs";
sleep 10;
[] exec "moving.sqs";
[] exec "PMC_corpses.sqs";
[artyleader] exec "PMC_artydefence.sqs";
sleep 5;
[mortarleader] exec "PMC_artydefence.sqs";
