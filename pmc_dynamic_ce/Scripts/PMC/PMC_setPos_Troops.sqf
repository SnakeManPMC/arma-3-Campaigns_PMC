
{_x setpos [assault1_x,assault1_y]} foreach units assault1;
{_x setpos [assault2_x,assault2_y]} foreach units assault2;
{_x setpos [assault3_x,assault3_y]} foreach units assault3;
{_x setpos [assault4_x,assault4_y]} foreach units assault4;
{_x setpos [assault5_x,assault5_y]} foreach units assault5;

ut1 setpos [ustanks1_x,ustanks1_y];
ut2 setpos [ustanks1_x+20,ustanks1_y];
ut3 setpos [ustanks1_x+10,ustanks1_y+20];
ut4 setpos [ustanks1_x+20,ustanks1_y+20];

ut5 setpos [ustanks2_x,ustanks2_y];
ut6 setpos [ustanks2_x+20,ustanks2_y];
ut7 setpos [ustanks2_x+10,ustanks2_y+20];
ut8 setpos [ustanks2_x+20,ustanks2_y+20];

ut9 setpos [ustanks3_x,ustanks3_y];
ut10 setpos [ustanks3_x+20,ustanks3_y];
ut11 setpos [ustanks3_x+10,ustanks3_y+20];
ut12 setpos [ustanks3_x+20,ustanks3_y+20];

ut13 setpos [ustanks4_x,ustanks4_y];
ut14 setpos [ustanks4_x+20,ustanks4_y];
ut15 setpos [ustanks4_x+10,ustanks4_y+20];
ut16 setpos [ustanks4_x+20,ustanks4_y+20];

ut17 setpos [ustanks5_x,ustanks5_y];
ut18 setpos [ustanks5_x+20,ustanks5_y];
ut19 setpos [ustanks5_x+10,ustanks5_y+20];
ut20 setpos [ustanks5_x+20,ustanks5_y+20];

{_x setpos [ranger1_x,ranger1_y]} foreach units ranger1;
{_x setpos [ranger2_x,ranger2_y]} foreach units ranger2;
{_x setpos [ranger3_x,ranger3_y]} foreach units ranger3;
{_x setpos [seal1_x,seal1_y]} foreach units seal1;
{_x setpos [seal2_x,seal2_y]} foreach units seal2;

vehicle (units usarty1 select 0) setpos [usarty1_x,usarty1_y];
vehicle (units usarty1 select 1) setpos [usarty1_x+20,usarty1_y];
vehicle (units usarty1 select 2) setpos [usarty1_x-20,usarty1_y+20];
vehicle (units usarty1 select 3) setpos [usarty1_x+40,usarty1_y+20];

vehicle (units usarty2 select 0) setpos [usarty2_x,usarty2_y];
vehicle (units usarty2 select 1) setpos [usarty2_x+20,usarty2_y];
vehicle (units usarty2 select 2) setpos [usarty2_x-20,usarty2_y+20];
vehicle (units usarty2 select 3) setpos [usarty2_x+40,usarty2_y+20];
vehicle (units usarty2 select 4) setpos [usarty2_x+60,usarty2_y+20];
vehicle (units usarty2 select 5) setpos [usarty2_x+80,usarty2_y+40];

vehicle (units usarty3 select 0) setpos [usarty3_x,usarty3_y];
vehicle (units usarty3 select 1) setpos [usarty3_x+20,usarty3_y];
vehicle (units usarty3 select 2) setpos [usarty3_x-20,usarty3_y+20];
vehicle (units usarty3 select 3) setpos [usarty3_x+40,usarty3_y+20];

/*
{_x setpos [ustanks1_x,ustanks1_y]} foreach [ut1,ut2,ut3,ut4];
{_x setpos [ustanks2_x,ustanks2_y]} foreach [ut5,ut6,ut7,ut8];
{_x setpos [ustanks3_x,ustanks3_y]} foreach [ut9,ut10,ut11,ut12];
{_x setpos [ustanks4_x,ustanks4_y]} foreach [ut13,ut14,ut15,ut16];
{_x setpos [ustanks5_x,ustanks5_y]} foreach [ut17,ut18,ut19,ut20];
*/
