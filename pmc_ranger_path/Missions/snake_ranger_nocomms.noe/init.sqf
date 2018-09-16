
[] execVM "briefing.sqf";

PAPABEAR=[West,"HQ"];

herc1 setpos [(getpos herc1 select 0),(getpos herc1 select 1),200];
transp1 setbehaviour "careless";
transp1 setcombatmode "white";
transp1 setspeedmode "full";
transp1 setformation "column";
herc1 flyinheight 200;

{_x moveincargo herc1} foreach units assault1;
