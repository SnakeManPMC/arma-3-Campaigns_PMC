//auto-generated by ArmaBriefingConversion

player createDiaryRecord ["Diary", ["Diary", "



Today I'm going to blow some SLA up...
<br/>




"]];
player createDiaryRecord ["Diary", ["Mission", "

<marker name = 'start'>HQ</marker> is at Rahmadi. Raid the <marker name = 'target1'>Carmen</marker> objective to capture it and defend <marker name = 'target2'>Benoma</marker> against enemy attacks.<br/><br/>
Airlift your Special Forces from Benoma to Carmen, replace the SFs with regular infantry from Rahmadi (thats one of your objectives). Do not wander into enemy territory otherwise.<br/><br/>
Use MH-6 and Blackhawks to airlift and then insert your troops, only the helos are cleared to overfly the keepout areas, but your infantry or other vehicles are not to enter into this area.



"]];
// tasks need to be in reversed order
objective3 = player createSimpleTask ["Airlift regular troops"];
objective3 setSimpleTaskDescription ["Airlift regular troops", "Airlift regular troops", "Airlift regular troops"];
objective2 = player createSimpleTask ["Defend Benoma"];
objective2 setSimpleTaskDescription ["Defend Benoma", "Defend Benoma", "Defend Benoma"];
objective1 = player createSimpleTask ["Capture Carmen"];
objective1 setSimpleTaskDescription ["Capture Carmen", "Capture Carmen", "Capture Carmen"];
