
private
[
	"_a",
	"_color",
	"_m"
];

_a = 0;
while { _a < (count PMC_targets) } do
{
	_m = format ["PMC_Objective_%1", _a];
	_color = getMarkerColor _m;
	call compile format ["PMC_City_%1 = _color", _a];
	call compile format ["saveVar 'PMC_City_%1'", _a];
	_a = _a + 1;
};

hint format["Done saving %1 variables (PMC_targets is %2), feel free to end mission now you sucka!", _a, count PMC_targets];
