//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "




Leave no man behind!






"]];
player createDiaryRecord ["Diary", ["Mission", "


Alpha team <marker name = 'start'>start</marker> from base, 
helo <marker name = 'insert'>Insert LZ</marker> in the field. Secure the area and call Deltas to 
clear <marker name = 'target1'>target</marker> then call 
for <marker name = 'extract'>Extract LZ</marker> helo.
<br/><br/>
Good luck.



<br/><br/>PMC Ranger POW<br/><br/>

GEN SITREP<br/>
US operations in Everon continue at good space, we have captured important cities and
continue our push towards south. Russians are putting heavy resistance in all fronts.
<br/><br/>

INTEL<br/>
Local civilians tipped us off that they have seen US soldier being held in Russian city
at Le Moule. There is some armored patrols nearby but the city itself has just infantry
defenses.
<br/><br/>

ORDERS<br/>
Alpha team <marker name = 'start'>start</marker> from the airbase, Uh-60 Black Hawk 
will <marker name = 'insert'>Insert LZ</marker> your team in the field. Secure the area near 
Le Moule neutralizing all patrolling enemies. When you have secured the area, call Deltas Teams 
to clear <marker name = 'target1'>target</marker> where the POW is presumed to be located. While Deltas
assault the city, keep their backs secure. When they are done, they call you in to pickup the POW.
When you have him custody, call Black Hawk to <marker name = 'extract'>Extract LZ</marker> your team 
out of there. Remember, nobody gets left behind.
<br/><br/>

TACTICAL<br/>
Okay this is the real deal. You will keep the Delta boy's backs covered out there, then you get
the glory to pick the POW up from the city. Keep him safe, watch your fire. Good luck and remember,
Rangers lead the way, Hooyah!
<br/><br/>













"]];
// tasks need to be in reversed order
objective2 = player createSimpleTask ["Return to base"];
objective2 setSimpleTaskDescription ["Return to base", "Return to base", "Return to base"];
objective1 = player createSimpleTask ["Secure the area and extract POW"];
objective1 setSimpleTaskDescription ["Secure the area and extract POW", "Secure the area and extract POW", "Secure the area and extract POW"];
