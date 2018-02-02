
PMC_DoTrigger =
{
	_unitm = format ["%1", _targetpoint];
	_markerobj = createMarker [_unitm,_targetpoint];
	_markerobj setMarkerShape "ELLIPSE";
	_markerobj setMarkerColor "ColorRed";
	_markerobj setMarkerBrush "Solid";
	_markerobj setMarkerSize [500, 500];
};
