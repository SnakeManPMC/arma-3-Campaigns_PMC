
// stupid check
if (isNil "rollCall") then
{
	if (PMC_debug) then
	{
		diag_log format["PMC_RollCall; rollCall was: %1, so we had to try to fix it.", rollCall];
	};

	rollCall = (count units group player);

	if (PMC_debug) then
	{
		diag_log format["PMC_RollCall; rollCall was fixed to: %1, alles goed?", rollCall];
	};
};
if (PMC_debug) then
{
	diag_log format["PMC_RollCall; rollCall: %1", rollCall];
};

private _q = 1;

while {_q < rollCall} do
{
	"CUP_I_GUE_Soldier_AKSU" createUnit [position player, group player, "removeAllWeapons this", 0, "private"];
	_q = _q + 1;
};

private _z = units group player;

if (rollCall >= 1) then
{
	(_z select 0) loadStatus "p1";
};

if (rollCall >= 2) then
{
	(_z select 1) loadStatus "p2";
	(_z select 1) loadIdentity "PMC_GroupMemberID2";
};

if (rollCall >= 3) then
{
	(_z select 2) loadStatus "p3";
	(_z select 2) loadIdentity "PMC_GroupMemberID3";
};

if (rollCall >= 4) then
{
	(_z select 3) loadStatus "p4";
	(_z select 3) loadIdentity "PMC_GroupMemberID4";
};

if (rollCall >= 5) then
{
	(_z select 4) loadStatus "p5";
	(_z select 4) loadIdentity "PMC_GroupMemberID5";
};

if (rollCall >= 6) then
{
	(_z select 5) loadStatus "p6";
	(_z select 5) loadIdentity "PMC_GroupMemberID6";
};

if (rollCall >= 7) then
{
	(_z select 6) loadStatus "p7";
	(_z select 6) loadIdentity "PMC_GroupMemberID7";
};

if (rollCall >= 8) then
{
	(_z select 7) loadStatus "p8";
	(_z select 7) loadIdentity "PMC_GroupMemberID8";
};

if (rollCall >= 9) then
{
	(_z select 8) loadStatus "p9";
	(_z select 8) loadIdentity "PMC_GroupMemberID9";
};

if (rollCall >= 10) then
{
	(_z select 9) loadStatus "p10";
	(_z select 9) loadIdentity "PMC_GroupMemberID10";
};

if (rollCall >= 11) then
{
	(_z select 10) loadStatus "p11";
	(_z select 10) loadIdentity "PMC_GroupMemberID11";
};

if (rollCall >= 12) then
{
	(_z select 11) loadStatus "p12";
	(_z select 11) loadIdentity "PMC_GroupMemberID12";
};

private _c = 0;
while { _c < (rollCall) } do
{
	if (PMC_debug) then
	{
		// just some cool debug
		diag_log format["PMC_RollCall; Unit: %1, Skill: %2, rating: %3", (_z select _c), skill (_z select _c), rating (_z select _c)];
	};

	if (damage (_z select _c) > 0.9) then
	{
		deleteVehicle (_z select _c);
	}
	else
	{
		(_z select _c) setDamage 0;
	};
	_c = _c + 1;
};
