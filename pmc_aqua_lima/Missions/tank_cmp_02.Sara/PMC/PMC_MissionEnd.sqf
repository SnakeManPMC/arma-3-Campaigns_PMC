
// mission end, replaces a trigger. min 60, 0, 120

waitUntil
{
	sleep 5;
	((!isNil "pmc_opfordead1") && (!isNil "pmc_opfordead2"));
};

pmc_mcomplete = true;
1 setRadioMsg "End mission.";
player sideChat "Mission accomplished. Use radio 0-0-1 to end mission.";
hint "Mission accomplished. Use radio 0-0-1 to end mission.";
