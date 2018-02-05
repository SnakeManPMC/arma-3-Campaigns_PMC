CHN_ISLDIM = [102400,102400];
CHN_RESSIDE = "WEST";

// gulan objective to hidden at start
"2" objStatus "HIDDEN";
PMC_GulanActive = false;
PMC_GulanReadyToRun = false;

/*
	timeline

1) mission starts.
2) soon after bravo squad is overrun at Gulan.
 a) orders come to retake Gulan.
 b) bravo is heading to Somato.
3) gulan retaken
4) somato attack repelled.

*/

// wait and then run the gulan objective.
sleep 360 + random 720;
PMC_GulanReadyToRun = true;
