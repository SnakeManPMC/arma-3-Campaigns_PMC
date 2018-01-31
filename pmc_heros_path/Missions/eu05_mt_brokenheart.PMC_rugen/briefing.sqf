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
  				"Name: Carlos Edwards<br/>Rank: Captain<br/>  MOS: 7242, Diver (SEAL)<br/>Combat Medals: None<br/><br/>""Reunify Germany under the People's Banner,"" is what Pravda and the rest of the Soviet propaganda machine is saying. What a lame excuse for war.<br/><br/>What they REALLY mean is, ""We need to plunder the wealth of an economically-vibrant West Germany to pay for our insane military spending.""<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"Time to get violent. Make each a quick in-and-out job, and kill EVERYONE at the target sites. Use explosives and weapons found at the sites to conserve your own bullets.<br/><br/>Personally, I'd swap your M4 for a light machine gun (LMG); fire support is going to be critical in the big open areas here.<br/><br/>TIPS FROM ROMMEL&#185; #1: ""To eliminate stragglers, a thorough search of any locality previously occupied by the enemy is necessary.""<br/><br/>&#185; Field Marshal Erwin Rommel's INFANTRY ATTACKS, first printed in 1937, is a book based on Rommel's first-hand experiences commanding a company of mountain infantry in World War One.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"A shoe-string operation, that's what we're running here. You're lucky you have enough bullets for your magazines.<br/><br/>On the plus side, we've got a 688-class attack sub, the USS Key West, lurking nearby and hunting an Alfa-class sub. She can spare you two HE and two BLU warheads for this mission.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Electronic Signals Monitoring (ESM) picked up two communications and command sites on two mountain tops and one serious anti-aircraft site. The locations are confirmed by UAV photo analysis.<br/><br/>The enemy presence on Rugen-Ummanz is increasing as the Reds establish their bases here. The Reds are here to stay, and have been placing comm antennas and air-defense radars on hilltops.<br/><br/>Look forward to large infantry squads at the target sites and plenty of smaller infantry patrols. Leave no man standing in the target zones; each must be fully neutralized to accomplish today's mission.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and your SEAL Team ""Alpha"" <marker name='start'>start</marker> from the beach. Proceed and neutralize your objectives: <marker name='target1'>CCC Site 1</marker>, the <marker name='target2'>Anti Air</marker> weapon site, and <marker name='target3'>CCC Site 2</marker>. Then <marker name='extract'>extract</marker> at Rugen Sound to the east.<br/><br/>Command, communications, and control (CCC) sites are our primary targets today, along with some mobile AAA. You and your SEAL team <marker name='start'>start</marker> at the beach again. Proceed northeast and neutralize the <marker name='target1'>CCC Site 1</marker> on steep Hill 340. Next, destroy the <marker name='target2'>Anti Air</marker> weapons, equipment, and personnel on Hill 184 to the northeast. Finally, assault and destroy <marker name='target3'>CCC Site 2</marker> on top of Hill 149 near Rugen Sound, and leave no one alive. When you're done, go east to the <marker name='extract'>extract</marker> location at Rugen Sound (the body of water that separates Rugen Island from Ummanz Island).<br/><br/>Your ROE today: <b>Condition Yellow.</b> You're cleared to fire on the designated targets. Avoid all other contacts.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"Two large CAVALRY convoys destined for Europe have sailed from US east-coast ports. These carry the bulk of the reserve troops NATO needs to defend against the Red onslaught. In the meantime, the Red mobilization continues, with overflight recon photos revealing thousands of tanks deploying to camouflaged forward staging areas, along with bridging equipment and all the other gear needed for their planned assault into the plains of Central Germany.<br/><br/>Our tiny guerrilla teams here on Rugen Island (that means you, Captain Edwards) are tasked with disrupting the Soviet infrastructure, doing whatever we can to slow down the flux of troops coming through here on their way toward battles raging on the mainland. Today, that means destroying anti-aircraft equipment, so NATO airstrikes have a better chance of interdicting the sea lanes between North Germany and the big Soviet ports in the East Baltic Sea.<br/><br/>"
			]
		];
		PMC_objective4 = player createSimpleTask ["Extract home"];
		PMC_objective4 setSimpleTaskDescription ["Extract home <marker name='extract'>by the beach with a boat</marker>", "Extract home", "Extract home"];
		PMC_objective4 setSimpleTaskDestination (getMarkerPos "extract");
		
		PMC_objective3 = player createSimpleTask ["Neutralize CCC site 2"];
		PMC_objective3 setSimpleTaskDescription ["Neutralize <marker name='target3'>CCC site 2</marker>", "Neutralize CCC site 2", "Neutralize CCC site 2"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "target3");
		
		PMC_objective2 = player createSimpleTask ["Clear Anti Air equipment"];
		PMC_objective2 setSimpleTaskDescription ["Clear <marker name='target2'>Anti Air equipment</marker>", "Clear Anti Air equipment", "Clear Anti Air equipment"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Neutralize CCC site 1"];
		PMC_objective1 setSimpleTaskDescription ["Neutralize <marker name='target1'>CCC site 1</marker>", "Neutralize CCC site 1", "Neutralize CCC site 1"];
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
