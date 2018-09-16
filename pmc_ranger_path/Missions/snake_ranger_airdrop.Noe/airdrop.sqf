
DropInProgress = true;
DropComplete = false;

private _pln = herc1;

private _chute1 = "Steerable_Parachute_F" createvehicle [(getpos _pln select 0)-15,(getpos _pln select 1),(getpos _pln select 2)-5];
box1 = "CUP_USBasicAmmunitionBox" createvehicle getpos _chute1;

while { ((getpos box1 select 2) > 0.1) } do
{
	sleep 0.01;
	
	box1 setpos [(getpos _chute1 select 0),(getpos _chute1 select 1),(getpos _chute1 select 2)];
	box1 setdir getdir _chute1;
};

DropComplete = true;
