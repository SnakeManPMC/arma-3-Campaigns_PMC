
/*
trigger: Choose LZ location
activation: radio alpha
condition: this
on activation: "lz" setMarkerPos getPosASL mfr1; mfr1 groupChat "Okay the LZ marker is set to my location."; 2 setRadioMsg "End mission."; PMC_choose_lz setTaskState "SUCCEEDED"; PMC_lzx = (getMarkerPos "lz" select 0); PMC_lzy = (getMarkerPos "lz" select 1); saveVar "PMC_lzx"; saveVar "PMC_lzy";
moved to PMC_Choose_LZ.sqf

trigger: null
type: END1
activation: radio bravo
*/
