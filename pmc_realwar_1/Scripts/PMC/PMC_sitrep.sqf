
player sideChat format["All KIAs %1. OPFOR %2. BLUFOR %3. SuplTime: %4. ResupDays: %5 AllTime: %6", PMC_killedNum, PMC_opfor, PMC_blufor, PMC_LastResupplyTime, PMC_ResupplyDays, PMC_AllTimeUsed];

hint format["All KIAs: %1\nOPFOR forces: %2\nBLUFOR forces: %3\nLast Supply Time: %4\nResupply Days: %5\nCampaign time used: %6\nDays until resupply: %7", PMC_killedNum, PMC_opfor, PMC_blufor, PMC_LastResupplyTime, PMC_ResupplyDays, PMC_AllTimeUsed, (PMC_LastResupplyTime + (PMC_ResupplyDays / 24)) - PMC_AllTimeUsed];
