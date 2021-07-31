waitUntil {!(isNull player)};
waitUntil {player == player};

switch (side player) do
{
	case WEST:
	{
// 6
		player createDiaryRecord
		[
			"Diary",
			[
  				"DIARY",
  				"Name: Carlos Edwards<br/>Rank: Captain<br/>  MOS: 7242, Diver (SEAL)<br/>Combat Medals: Navy Cross, NATO Medal, Bronze Star with V for Valor. <br/><br/>How many more casualties must this war create? Seems like there are ENOUGH refugees, enough wounded, and enough dead to fill more than a thousand graveyards.<br/><br/>Will the Kremlin ever realize that the whole thing was a colossal mistake? Does the war have to go nuclear, and destroy the world, before they get that through their thick heads?<br/><br/>Well, like Einstein said, ""Nationalism is an infantile disease.""<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"TIPS FROM ROMMEL #11: ""Facing the enemy, the recon squad commander becomes conscious of his heavy responsibilities. Every mistake means casualties, perhaps the lives of his men. Therefore, every advance must be made with extreme caution. Taking advantage of all cover, the squad should keep off all roads and repeatedly examine the terrain with field glasses.""<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"You get a ride in and a ride out, some TLAMS, and that's about it. Most of our resources are tied up in heavy fighting to the east across the Sound.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Expect infantry and light armor near the SCUD site.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"Jump on the waiting helo at the <marker name='start'>start</marker> location near Rozenburg.  Head southwest from the <marker name='insert'>insertion LZ</marker> with your SEALs to find and eliminate the <marker name='target1'>SCUD</marker> site. Radio (0-0-1) for helo pickup.<br/><br/>Before the Reds do something stupid with it, find the SCUD and wreck it. Stay back a safe distance from the thing; the propellant alone will cause a mighty hot fire.<br/><br/>Your SEALs <marker name='start'>start</marker> near Rozenburg. You'll get a helo ride to the <marker name='insert'>insertion LZ</marker>. Proceed southwest and destroy all equipment and personnel at the <marker name='target1'>SCUD</marker> site. Once the SCUD(s) are ruined, move to the <marker name='extract'>extraction LZ</marker> and use the radio command (0-0-1) to call helicopter pickup.<br/><br/>Rules of Engagement: Condition Yellow. There are far more Reds than there are of you. Keep a low profile. Good luck, and good hunting.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"The Reds seem bound and determined to cause as much grief as possible, short of using nukes on us. The Red commander on Jutland has used massive demolition charges stolen from a nearby explosives factory to completely destroy the Kiel Canal. In places where they're forced to retreat, the Reds are conducting a 'scorched-earth' policy, blowing up every building and setting massive fires.<br/><br/>Their treatment of civilian refugees has gone from criminal to downright Nazi. There must be at least a half-million dead already. Evidently, this is part of their effort to win a better negotiating position.<br/><br/>The worse things get for the Reds, the more frantic they get, and the more stupid things they do. They've positioned a SCUD IRBM to the southwest, in a launching position where it could reach most of northern Germany. SIGINT shows that some type of special warhead has been delivered to the launch site. It could be nuclear, chemical, or biotoxins, or who knows what?<br/><br/>"
			]
		];

		PMC_objective2 = player createSimpleTask ["Return to base"];
		PMC_objective2 setSimpleTaskDescription ["Return to <marker name='start'>base</marker>", "Return to base", "Return to base"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "start");
		
		PMC_objective1 = player createSimpleTask ["Eliminate the SCUD site"];
		PMC_objective1 setSimpleTaskDescription ["Eliminate the <marker name='target1'>SCUD site</marker>", "Eliminate the SCUD site", "Eliminate the SCUD site"];
		PMC_objective1 setSimpleTaskDestination (getMarkerPos "target1");
		player setCurrentTask PMC_objective1;
	};

	case EAST:
	{
	};

	case RESISTANCE:
	{
	};

	case CIVILIAN:
	{
	};
};
