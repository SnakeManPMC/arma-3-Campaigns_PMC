
[] execVM "PMC\PMC_Mission_Start.sqf";

sleep 0.1;
(units assault1 select 0) moveInDriver shp1;
(units assault1 select 1) moveInCargo shp1;
(units assault1 select 2) moveInCargo shp1;
(units assault1 select 3) moveInCargo shp1;
