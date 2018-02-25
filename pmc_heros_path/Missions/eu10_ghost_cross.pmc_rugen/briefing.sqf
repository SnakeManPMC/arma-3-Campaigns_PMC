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
  				"Name: Steve Gross<br/>Rank: Gunnery Sergeant<br/>  MOS: 12A, Pioneer (Ranger)<br/>Combat Medals: None<br/><br/>Who said war is hell? War is fun! Heh, I guess that's gonna last right up to the moment I get disembowelled by a mortar fragment. Man! I just wish they'd give us even a few hours rest before the next combat.<br/><br/>All that extra special ops training I signed up for is paying huge dividends by keeping me alive and sane. The stress is harder on the guys with less training, I can see that.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"The M203 grenade launcher is an excellent stand-off weapon for engaging distant infantry on the open plains of Rugen-Ummanz. You can shatter an infantry squad long before they can get close enough to use PKs and AKs on you. Use your command perspective to spot where your rounds are landing, and adjust your fire in small increments by alternately swapping views and firing. <br/><br/>If you run into a minefield, consider changing formation to COLUMN so that you can guide your men through it.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"No change in the available infantry weapons. Heavy anti-tank gear remains in short supply.<br/><br/>The artillery war is escalating. We've got Tyrannosaurus Rex, our 155mm mobile howitzers, in addition to the M101s. The enemy has also gotten some guns set up, so expect incoming.<br/><br/>The USS Key West is still loitering in the area with four TLAMs allocated to us.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"The territory across Rugen Sound is injun country, so watch your six. The enemy base is packed with bad guys, and there are lot of infantry patrols nearby. Make certain the area around the base is completely clear of enemy before calling for the helo.<br/><br/>Having your back to a wall isn't always a bad thing. At least the enemy can't shoot at you from that direction.<br/><br/>Take a hint from Field Marshal Erwin Rommel: ""Don't fight a battle if you don't gain anything by winning.""<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and Ranger Team ""Alpha"" <marker name='start'>start</marker> at the US Army base. Jump in the helo. From the <marker name='insert'>insertion LZ</marker>, go kill everyone at the Red <marker name='target1'>Army Base</marker>. Proceed to the <marker name='extract'>extraction LZ</marker> and use the radio command(0-0-1) to call for pickup.<br/><br/>The primary objective today is to raid the new Red Army base across the water, on Ummanz Island, that guards the nearby port at Alverna. Later, some regular Army troops are scheduled to assault the Sea Port. They're counting on you to do your job, leaving no man standing in the target zone. This is a hit-and-run operation.<br/><br/>You and your Rangers <marker name='start'>start</marker> from the US Army base near Vaals. Jump in the waiting helo, which will take you across the water to the sister island of Ummanz. Get ready for a fast-rope disembark at the <marker name='insert'>insertion LZ</marker>. The Red <marker name='target1'>Army Base</marker> is north and a bit east of the LZ. Your business is killing, and business should be good. After your have achieved your objectives, move to the <marker name='extract'>extraction LZ</marker> and use the radio command (0-0-1) to call for helicopter pickup. <br/><br/>Rules of Engagement: Condition Red, weapons free. Kill every Red soldier you meet. We'll pull you out of the line for a rest after this mission.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"Heavy fighting continues, both in the north near Kiel and in Central Germany. Unfortunately, the Reds are making steady progress. We must be successful on this front, and launch some anti-ship missiles to kick the slats out from under enemy operations happening elsewhere.<br/><br/>We must capture the key central areas of Rugen-Ummanz if there's going to be any prayer of us holding out and getting the anti-ship missiles into position. That means taking the sea port, the main airfield, and the capital city of Asten. Don't worry, you don't have to do all that yourself.<br/><br/>"
			]
		];
		PMC_objective5 = player createSimpleTask ["Return to your base"];
		PMC_objective5 setSimpleTaskDescription ["Return to <marker name='start'>your base</marker>", "Return to your base", "Return to your base"];
		PMC_objective5 setSimpleTaskDestination (getMarkerPos "start");
		
		PMC_objective1 = player createSimpleTask ["Neutralize the Red Base"];
		PMC_objective1 setSimpleTaskDescription ["Neutralize the <marker name='target1'>Red Base</marker>", "Neutralize the Red Base", "Neutralize the Red Base"];
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
