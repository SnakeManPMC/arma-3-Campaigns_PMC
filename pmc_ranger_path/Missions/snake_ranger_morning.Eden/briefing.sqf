//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "




Quick strike in the morning, hooyah!






"]];
player createDiaryRecord ["Diary", ["Mission", "


Alpha team <marker name = 'start'>start</marker> from field base, 
helo <marker name = 'insert'>insert LZ</marker> in the beach, assault and clear
the <marker name = 'target1'>Morton</marker> from any Russians, 
then <marker name = 'extract'>extract LZ</marker> back home.
<br/><br/>
Good luck.



<br/><br/>PMC Ranger Morning<br/><br/>

GEN SITREP<br/>
Last night there was heavy fighting in the central Everon, we are preparing for next
big assault probably by tomorrow. Rangers will harrash the enemy in the mean time.
<br/><br/>

INTEL<br/>
Morton is somewhat lightly defended, only armor is few BMP's infantry presence dont 
seem to be too well dug in at the moment.
<br/><br/>

ORDERS<br/>
Alpha team <marker name = 'start'>start</marker> from field base, MH-60L Blackhawk
helicopter will <marker name = 'insert'>insert LZ</marker> your team into the beach, from 
there assault and clear the city 
of <marker name = 'target1'>Morton</marker> from any Russians stationed there. This is a lighting
strike conduced by your team, two Delta Force <marker name = 'snipa1'>sniper teams</marker> in the 
north and another <marker name = 'ranger2'>Ranger team</marker> approaching from north west of the 
city. When you are ready to assault, use radio (0-0-1) to make the assault call. Strike it 
fast, strike it hard. When you have accomplished the mission, proceed into 
the <marker name = 'extract'>extract LZ</marker> and use radio (0-0-2) to call Black Hawk to give 
you ride back home. Rest of the Delta and Rangers will follow in additional helo extractions. 
Good luck everyone.
<br/><br/>

TACTICAL<br/>
This should be easy, just dont rush too blindly into the enemy fire. 
<br/><br/>













"]];
// tasks need to be in reversed order
objective1 = player createSimpleTask ["Clear Morton"];
objective1 setSimpleTaskDescription ["Clear Morton", "Clear Morton", "Clear Morton"];
