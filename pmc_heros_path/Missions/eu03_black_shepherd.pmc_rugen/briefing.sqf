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
  				"Name: Carlos Edwards<br/>Rank: Captain<br/>  MOS: 7242, Diver (SEAL)<br/>Combat Medals: None<br/><br/>Caught behind enemy lines, while UDT training on this damned resort island. Who knew?<br/><br/>Well, the Reds cornered the wrong rats. My whole SEAL team. With guns. Like Bruce Willis said in the movie, Die Hard: ""I've got a machine gun.""<br/><br/>Step one: save some heroes from a mountaintop. These guys evidently put up a hell of a fight at the main barracks before being forced to retreat; probably medals will be handed out later. Plus, these guys will be useful with future guerrilla ops. Every warm body will count.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"When you find the missing infantry, the password is ""SNAKE"" and the countersign is ""ELVIS.""<br/><br/>Carlos, remember your ROE: don't kill anyone unless you have to. Avoid contact. You'll get plenty of chances to blow stuff up later on, okay? <br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"Your resources are damn slim. Expect no air support, no helivacs, no naval gunnery, nothing but what's in your packs and whatever you can scavenge from the enemy. Anything you find, you can bring back to store in the SEAL ammobox for the next mission.<br/><br/>Also, we have no manpower reserves out here, well past anything that might be called a ""front line."" Conserve your men; they're irreplaceable.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Our band of lost infantry sent a radio message about two hours ago that they were forced to retreat from the main army barracks near Vaals. They've fled to a safer location in the nearby mountains northwest of the base.<br/><br/>The islands of Rugen-Ummanz are bigger than your training grounds back at NSWC Coronado. Be prepared for longer marches and fewer 7-11s and brothels than usual.<br/><br/>And again, if you get lost, check your GPS or ask your radioman for status (f2-5-5). The Reds have have left our GPS satellites alone; they may be too dependent on GPS themselves, even without having the codes for full military precision.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and SEAL Team ""Alpha"" <marker name='start'>start</marker> at the beach. Meet the <marker name='target1'>Army Squad</marker> in the castle ruins, and bring them to the <marker name='extract'>extract</marker> location on the beach. NO SHOOTING.<br/><br/>And, expect NO REINFORCEMENTS for your upcoming missions. Try to keep your squad from getting shot up.<br/><br/>The first step back from the brink is to collect our scattered men and refit them as best we can. You and your SEAL team <marker name='start'>start</marker> from a beach on the NW corner of Rugen Island. Proceed into the mountains and meet up with the <marker name='target1'>Army Squad</marker> in the castle ruins. When you've joined them, bring them to the <marker name='extract'>extract</marker> location on the beach alive.<br/><br/>Captain Edwards, your rules of engagement are as follows: <b>Condition Green.</b> You are not to fire unless fired upon. Avoid contact.<br/><br/>Don't expect a rose garden these next couple of spec ops missions, which are likely to exhibit pants-shitting terror alternating with some tough real-world navigating. Get to the extraction site with minimum of friendly casualties.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"The situation has gone from grim to downright awful, especially for us, the forces on the forward edge of battle. The German patrol boats were wiped out by the first wave of enemy cruise missiles. Our radar and comm sites were similarly destroyed, and all other defenses were overrun within the first two hours.<br/><br/> On the mainland, things aren't better. A surprise air attack caught a lot of NATO aircraft on the ground, so air resources are minimal. Meaning, we get no air support.<br/><br/>West Berlin has been declared an open city. The Reds are mobilizing all their armored divisions for a big drive through the Fulda Gap and into the plains of Central Germany, where they can really cut loose.<br/><br/>So, we're left with just a guerrilla-type presence: you SEALs, some scattered Army survivors, and some REMFs. The Reds are obviously here to stay, and plan to use these islands as staging areas. We need to re-organize, and do some dirty work to disrupt their plans.<br/><br/>"
			]
		];
		PMC_objective2 = player createSimpleTask ["Extract the Army squad"];
		PMC_objective2 setSimpleTaskDescription ["Extract the <marker name='extract'>Army squad</marker>", "Extract the Army squad", "Extract the Army squad"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "extract");

		// create one task and set it as current
		PMC_objective1 = player createSimpleTask ["Meet the Army squad"];
		PMC_objective1 setSimpleTaskDescription ["Meet the <marker name='target1'>Army squad</marker>", "Meet the Army squad", "Meet the Army squad"];
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
