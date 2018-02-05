
PMC_Artillery_Rounds = 0;
PMC_Artillery_Rounds = PMC_artyAmmo select 0;
PMC_Mortar_Rounds = 0;
PMC_Mortar_Rounds = PMC_artyAmmo select 1;
PMC_MLRS_Rounds = 0;
PMC_MLRS_Rounds = PMC_artyAmmo select 2;

saveVar "PMC_Artillery_Rounds";
saveVar "PMC_Mortar_Rounds";
saveVar "PMC_MLRS_Rounds";
