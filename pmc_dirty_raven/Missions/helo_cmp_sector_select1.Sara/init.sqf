
[] execVM "PMC\PMC_Briefing.sqf";

/*

campaign starts, we have no variables set, at all.

if we have, then we process them below this if statement.

*/
if (isNil "PMC_Campaign_Started") then
{
	PMC_Campaign_Started = true;
	saveVar "PMC_Campaign_Started";
	PMC_campaign_over = false;
	saveVar "PMC_campaign_over";

	PMC_sector1 = false;
	saveVar "PMC_sector1";
	PMC_sector2 = false;
	saveVar "PMC_sector2";
	PMC_sector3 = false;
	saveVar "PMC_sector3";
	PMC_sector4 = false;
	saveVar "PMC_sector4";
	PMC_sector5 = false;
	saveVar "PMC_sector5";
	PMC_sector6 = false;
	saveVar "PMC_sector6";
};

/*

here we go through all sectors, which one is done, we disable it
from the selection.

*/
if (PMC_sector1) then
{
	1 setRadioMsg "null";
	deleteMarker "sector1text";
	deleteMarker "sector1";
};

if (PMC_sector2) then
{
	2 setRadioMsg "null";
	deleteMarker "sector2text";
	deleteMarker "sector2";
};

if (PMC_sector3) then
{
	3 setRadioMsg "null";
	deleteMarker "sector3text";
	deleteMarker "sector3";
};

if (PMC_sector4) then
{
	4 setRadioMsg "null";
	deleteMarker "sector4text";
	deleteMarker "sector4";
};

if (PMC_sector5) then
{
	5 setRadioMsg "null";
	deleteMarker "sector5text";
	deleteMarker "sector5";
};

if (PMC_sector6) then
{
	6 setRadioMsg "null";
	deleteMarker "sector6text";
	deleteMarker "sector6";
};

if (PMC_sector1 && PMC_sector2 && PMC_sector3 && PMC_sector4 && PMC_sector5 && PMC_sector6) then
{
	PMC_campaign_over = true;
};

//hint format["PMC_Campaign_Started: %1\nPMC_sector1: %2\nPMC_sector2: %3\nPMC_sector3: %4\nPMC_sector4: %5\nPMC_sector5: %6\nPMC_sector6: %7\nPMC_campaign_over: %8", PMC_Campaign_Started, PMC_sector1, PMC_sector2, PMC_sector3, PMC_sector4, PMC_sector5, PMC_sector6, PMC_campaign_over];
