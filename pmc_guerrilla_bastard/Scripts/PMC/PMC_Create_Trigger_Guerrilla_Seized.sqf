
private["_z", "_triggerTimeout"];

_myActivation = format["hint '%1 activated!'; '%1' setMarkerColor 'ColorGreen';", (_this select 1)];
_triggerTimeout = 7;

_z = createTrigger ["EmptyDetector", (_this select 0)];
_z setTriggerActivation ["GUER SEIZED", "PRESENT", false];
_z setTriggerArea [100, 100, 0, true];
_z setTriggerTimeout [(_triggerTimeout / 4), (_triggerTimeout / 2), _triggerTimeout, false];
_z setTriggerStatements ["this", _myActivation, ""];
