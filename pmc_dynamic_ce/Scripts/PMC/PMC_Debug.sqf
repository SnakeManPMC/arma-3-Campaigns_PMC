
private _pmcstr = format ["MaxEast: %1, PMC_opforUnits: %2, PMC_East_KIA: %3, PMC_WarRunning: %4, PMC_Campaign_End: %5, PMC_AllTimeUsed: %6, PMC_ResupplyDay: %7, PMC_LastResupplyTime: %8, PMC_corpses: %9", MaxEast, PMC_opforUnits, PMC_East_KIA, PMC_WarRunning, PMC_Campaign_End, PMC_AllTimeUsed, PMC_ResupplyDay, PMC_LastResupplyTime, (count PMC_corpses)];
hint _pmcstr;
player sideChat _pmcstr;
