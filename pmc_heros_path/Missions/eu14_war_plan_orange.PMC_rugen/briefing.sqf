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
  				"Name: Gordon McKenzie<br/>Rank: Gunnery Sergeant (field promotion)<br/>  MOS: 11B, Infantry<br/>Combat Medals: Bronze Star with V for Valor<br/><br/>It's astounding, how closely-knit our squad has become in just a few days of combat. I hardly know some of these guys, but I'd put my life on the line for any of them, because I know beyond any doubt every one of them would do the same for me. I didn't even realize it consciously until thinking about it just now."
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"There are sure to be countless targets on the road west. Conserve your ammunition, use ultra-short bursts, go for upper torso shots, and remember your small-unit tactics.<br/><br/>TIPS FROM ROMMEL #3: ""In advances, as well as in forest fighting, it's advisable to have a maximum number of light machine guns well up forward."" [so they don't accidentally shoot your own fellows in the back]<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"We got an ammo resupply for the Paladins. So, Mr Rex is back, positioned just south of the US Army Base. We've also got mortars and M101s at the old Red Army Base.<br/><br/>There's also three hummvees, a couple of trucks, and a medic crew with ambulance.<br/><br/>You may see some A-10s flying around looking for CAS targets.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"A strung-out series of lighter defense positions is what you should expect. UAV data indicates enemy armor near Galder.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You <marker name='start'>start</marker> at the Airbase. Take <marker name='target1'>Tubbergen</marker> first. Capture the <marker name='target2'>fuel depot</marker> next. Finally, take the bridge, by seizing <marker name='target3'>Galder</marker> and the northern <marker name='target4'>road block</marker>.<br/><br/>You have a long road ahead. There are three targets for Plan Orange: a crossroads, fuel, and a bridge.<br/><br/>Tubbergen is a vital crossroads town. We need to open the route toward the capital city of Asten, for future operations in that direction.<br/><br/>We cannot transport fuel to the island to operate our helos and armor without exposing the transport vehicles to the most dire risks. The fuel depot to the west must be taken.<br/><br/>The northern bridge must be taken in order to link the US Army base west across the Sound with our forces deploying at the port and airfield. Our thin line of troops at the Army base is under heavy pressure from enemy forces we bypassed on Rugen; they need ammo and reinforcements.<br/><br/>You and your regulars <marker name='start'>start</marker> at the Airbase. Take <marker name='target1'>Tubbergen</marker> first. Capture the <marker name='target2'>fuel depot</marker> next. Whatever you do, avoid destroying the vital stocks of fuel there. Finally, take both ends of the bridge, by seizing <marker name='target3'>Galder</marker> and the northern <marker name='target4'>road block</marker>.<br/><br/>Rules of Engagement: Condition Red. Shoot everyone you see while you're on the road.<br/><br/>Best of luck.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"More grim news. The Reds have pulled a fast one, with the result being over 2,500 US soldiers being flung out high over the Atlantic without parachutes.<br/><br/>A previously-unreported weapon system is responsible. Two specially-equipped TU-22M Backfire bombers, huge, modern, sophisticated long-range supersonic things, intercepted a gaggle of C-5A Galaxy transports ferrying troops in mid-ocean.<br/><br/>The bombers were carrying canisters filled with dozens of AA-10 Atoll air-to-air missiles instead of bombs. It was a massacre, like wolves in a sheep corral. Eight huge US transport planes were brought down with 100% casualties.<br/><br/>"
			]
		];

		PMC_objective4 = player createSimpleTask ["Neutralize the road block"];
		PMC_objective4 setSimpleTaskDescription ["Neutralize the <marker name='target4'>road block</marker>", "Neutralize the road block", "Neutralize the road block"];
		PMC_objective4 setSimpleTaskDestination (getMarkerPos "target4");
		
		PMC_objective3 = player createSimpleTask ["Capture Galder"];
		PMC_objective3 setSimpleTaskDescription ["Capture <marker name='target3'>Galder</marker>", "Capture Galder", "Capture Galder"];
		PMC_objective3 setSimpleTaskDestination (getMarkerPos "target3");
		
		PMC_objective2 = player createSimpleTask ["Seize the fuel depot"];
		PMC_objective2 setSimpleTaskDescription ["Seize the <marker name='target2'>fuel depot</marker>", "Seize the fuel depot", "Seize the fuel depot"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Capture Tubbergen"];
		PMC_objective1 setSimpleTaskDescription ["Capture <marker name='target1'>Tubbergen</marker>", "Capture Tubbergen", "Capture Tubbergen"];
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
