
// this used to be add-defenses.sqs

private _marker = _this select 0;
private _city = getMarkerPos _marker;

call compile preprocessFileLineNumbers "PMC\PMC_Create_US_Forces.sqf";
call compile preprocessFileLineNumbers "PMC\PMC_Create_RU_Forces.sqf";

if (getmarkercolor _marker == "ColorRed") then
{
	[_city] call PMC_RU_Forces;
};
if (getmarkercolor _marker == "ColorGreen") then
{
	[_city] call PMC_US_Forces;
};
