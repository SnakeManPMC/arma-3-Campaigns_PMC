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
  				"Name: Steve Gross<br/>Rank: Staff Sergeant<br/>  MOS: 12A, Pioneer (Ranger)<br/>Combat Medals: None<br/><br/>How did I get picked for this assignment again? Hmmm, let's see, stupid enough to volunteer for Ranger school, check. Stupid enough to volunteer for additional spec ops training, check. Stupid enough to volunteer to lead a small Ranger squad into a raging, violent battle with no support and not enough heavy weapons to accomplish the mission, check.<br/><br/>D'oh! Someone needs to choose me for the 'Darwin' awards.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"Watch your backs out there when approaching the fuel depot. Hit the fuel trucks with M203s or RPGs from cover such as between the farm buildings. Stand well clear of the fuel explosions; they're certain to be massive.<br/><br/>Consider swapping your M4 for a sniper rifle. You didn't qualify Expert Marksman for nothing. Grab some RPGs at the earliest opportunity.<br/><br/>Stay frosty and STAY ALIVE. Steve, it took us far too much work to get you all the way to the point of contact for you to die a stupid death. Go for a quick in-and-out operation, and disappear before enemy reaction squads arrive. If you become heavily engaged, break contact by retreating deep into a forest.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"No support is available. It took everything we had in terms of air support to get you here, and now the Air Force is licking its wounds. Your supply of heavy infantry weapons unfortunately went down in the flaming wreckage of UH60-2 over the Bay of Ummanz. Sorry.<br/><br/>Anything you scavenge and bring back to base goes into the Ranger ammobox, and can be used next mission. There's no Wal-Mart out here, and we're unable to replace your lost gear. Keep your ammo pouches well-stocked.<br/><br/>Don't forget that all the fire team leaders in your Ranger squad are cross-trained as medics.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"We've spotted a farm the Russians are using as a fuel depot to refuel their armor. There are several Ural-type tanker trucks  at the site. Destroy them all. We spotted some light armor to the north.<br/><br/>The Reds are extremely short on fuel, according to decrypted sigint. They'll fight hard to keep this fuel. Approach with caution. When you attack, move decisively, wreck the place, and run like hell.<br/><br/>At another farm to the north, some locals are working as partisans. These fellows, who seem reliable and authentic, contacted the German military via their short-wave radio. They claim to have critical intelligence, but are unwilling to disclose it over unencrypted radio.<br/><br/> "
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and Ranger Team ""Alpha"" <marker name='start'>start</marker> in a helo near the <marker name='insert'>insert LZ</marker> a bit SW of the target. Destroy the <marker name='target1'>refuel site</marker> by the main road. After that, talk to the <marker name='target2'>farmers</marker> at Haanslo Farm. Then, <marker name='extract'>extract</marker> via helo.<br/><br/>You're the leading edge of the NATO counterattack. We committed a lot of resources, from AWACs planes and Wild Weasel jammers, to picket ships and sub patrols, in order to get you here. A number of good men died in the process of making your upcoming helo insertion happen, so stay alive and be effective.<br/><br/>Our current operation is a raid on the south end of Rugen, near Bridge Island. Your nine-man Ranger Team will <marker name='start'>start</marker> in a helo near the <marker name='insert'>insert LZ</marker> a bit SW of the target zone. Your primary target is a <marker name='target1'>refuel site</marker> by the main road. Eliminate all refuel personnel and especially their tanker trucks. Afterwards, proceed NW and talk to a Mr Goehan and Mr Zwanz, local <marker name='target2'>farmers</marker>; we want some intel from them.<br/><br/>Rules of Engagement: Condition Yellow. You're cleared to engage the tank refuel site. Avoid other contact. After you've achieved your objectives, move to the <marker name='extract'>extraction LZ</marker> and use the radio command (0-0-1) to call for helo pickup. You have only about two hours until the helo reaches bingo fuel and must return to the mainland or run out of fuel and crash.<br/><br/>Don't fail us.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"We've discovered the true purpose of the Red amphibious fleet off the coast of Rugen-Ummanz. They're landing troops in the Bay of Lubecker-Bucht to the west, and the invasion here at Rugen is just a tiny sideshow to gain a forward base.<br/><br/>The bigger invasion is at Germany's northern peninsula, Jutland. The Reds are driving across Jutland to cut off the great port of Kiel, and the vital Kiel Canal, from the remainder of Germany. They've gotten about half-way across already and have cut the main autobahn leading south.<br/><br/>The invasion at Jutland has suddenly made our little island group very important in the eyes of NATO planners. They're hot on the idea of re-taking Rugen-Ummanz to launch a blizzard of strikes on the Baltic sea lanes, thus cutting off the Reds on Jutland. That's where you come in, Sergeant Gross.<br/><br/>"
			]
		];
		PMC_objective3 = player createSimpleTask ["Extract home"];
		PMC_objective3 setSimpleTaskDescription ["Extract home <marker name='extract'>by helo</marker>", "Extract home", "Extract home"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "extract");
		
		PMC_objective2 = player createSimpleTask ["Talk to the partisans"];
		PMC_objective2 setSimpleTaskDescription ["Talk to the <marker name='target2'>partisans</marker>", "Talk to the partisans", "Talk to the partisans"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Destroy the refuel site"];
		PMC_objective1 setSimpleTaskDescription ["Destroy the <marker name='target1'>refuel site</marker>", "Destroy the refuel site", "Destroy the refuel site"];
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
