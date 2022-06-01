
pmc_mfr1 loadStatus "PMC_saveStatus_MFR1";
pmc_mfr2 loadStatus "PMC_saveStatus_MFR2";
pmc_mfr3 loadStatus "PMC_saveStatus_MFR3";
pmc_mfr4 loadStatus "PMC_saveStatus_MFR4";
pmc_mfr5 loadStatus "PMC_saveStatus_MFR5";
pmc_mfr6 loadStatus "PMC_saveStatus_MFR6";

{
	if (!alive _x) then
	{
		deleteVehicle _x;
	};
} forEach units (group player);
