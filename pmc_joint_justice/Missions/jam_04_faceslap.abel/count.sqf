
_wa="air" counttype aiwest;
_wl="land" counttype aiwest;
_wt="tank" counttype aiwest;
_wm="man" counttype aiwest;

_ea="air" counttype aieast;
_el="land" counttype aieast;
_wt="tank" counttype aiwest;
_em="man" counttype aieast;

hint format
[
	"wair: %1, wland: %2\n
	wtank: %3, wman: %4\n
	eair: %5, eland: %6\n
	etank: %7, eman: %8\n
	ALL: %9\n\n
	PMC_wave2: %10\n
	PMC_wave3: %11\n
	PMC_wave4: %12\n
	PMC_wave5: %13",
	_wa,_wl,_wt,_wm,_ea,_el,_et,_em,(count aiwest + count aieast),PMC_wave2,PMC_wave3,PMC_wave4,PMC_wave5
];
