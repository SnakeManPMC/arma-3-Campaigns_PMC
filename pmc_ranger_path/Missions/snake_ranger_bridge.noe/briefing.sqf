//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "




This bridge is key installation on the Nogova, so we must be wevy wevy careful... sure, lets
not blow it up then. 






"]];
player createDiaryRecord ["Diary", ["Mission", "


Alpha team <marker name = 'start'>start</marker> from airbase, helo fast 
rope <marker name = 'insert'>insert</marker> NW of <marker name = 'target1'>bridge</marker> capture
it intact. <marker name = 'extract'>extract LZ</marker> back to base when reinforcements
have arrived.



<br/><br/>PMC Ranger Bridge<br/><br/>

GEN SITREP<br/>
Our combat operations have begun in Nogova. Contact has been made with the enemy in the north 
and east of the airbase. So far our progress have been good, soon we will be taking first
large city objective. Our Special Operations Forces will conduct daring assault to the key
bridge dividing Nogova in two. When we can get our forces to protect that bridge it means
we can move troops and vehicles around much easier and the civilian government which will take
over at some distant future will be happy.
<br/><br/>

INTEL<br/>
In the bridge you're looking at heavy infantry defenses along with some armored vehicles
patrolling. No heavy tanks present in the area. We do not believe that the Russians have rigged
demolitions to the bridge but we are not sure.
<br/><br/>

ORDERS<br/>
Alpha team <marker name = 'start'>start</marker> from airbase, helo will ferry your team to 
a fast 
rope <marker name = 'insert'>insert</marker> position between the forests. From there proceed into
SE direction to the <marker name = 'target1'>bridge</marker> and assault the Russian defenses 
present. capturing the bridge intact is vital in this operation since we do not want to destroy
too much of the Nogovian infanstructure. When you have cleared the bridge, we will send backup
infantry to take over there. Secure the bridge until they arrive and if no Russian counter attack
is in sight, then call helo to the <marker name = 'extract'>extract LZ</marker> to pick your team up.
Your mission is accomplished when we got the bridge and you have returned to base. Good luck.
<br/><br/>

TACTICAL<br/>
Okay dont shoot the bridge or the civvies be restless... who cares about the bridge lets drop 
few MK-84's there and be done with it, but no... we must send our best guys into harms way. Yes,
that means you, so be careful out there. Dont take too many risks, you're alone until the
reinforcements arrive.
<br/><br/>













"]];
// tasks need to be in reversed order
objective3 = player createSimpleTask ["Return to base"];
objective3 setSimpleTaskDescription ["Return to base", "Return to base", "Return to base"];
objective2 = player createSimpleTask ["Wait for reinforcements"];
objective2 setSimpleTaskDescription ["Wait for reinforcements", "Wait for reinforcements", "Wait for reinforcements"];
objective1 = player createSimpleTask ["Capture and Secure bridge"];
objective1 setSimpleTaskDescription ["Capture and Secure bridge", "Capture and Secure bridge", "Capture and Secure bridge"];
