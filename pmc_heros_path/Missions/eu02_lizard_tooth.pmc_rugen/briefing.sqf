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
  				"Name: Gordon McKenzie<br/>Rank: Staff Sergeant (field promotion)<br/>  MOS: 11B, Infantry<br/>Combat Medals: None<br/><br/>So much for having a double-date with the girls. Don't suppose they'd want to meet me out here. Hell, those fickle bitches, they're probably dating some Russian officer already, eating caviar and getting tickled with ostrich feathers."
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"This base is just an infantry barracks. Good thing there's small-arms ammo laying around; it might become like a little Alamo soon. Don't forget the M2 heavy machine gun set up to the east; if those Hinds start strafing us, it's the only thing we have that could possibly save us.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"Your Order of Battle (ORBAT): now, that's a joke. No heavy weapons except a .50 cal by the front gate. No armor. Nine guys total with light infantry weapons. Not a prayer of getting reinforcements. Not good.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"We've got at least two Mi-24 Hind helos inbound from the south, probably bringing in infantry or special forces. It's unlikely they have any armor on shore yet.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"Sergeant McKenzie, you and Alpha Team <marker name='start'>start</marker> from the small US Base west of Vaals. HOLD THE BASE AT ALL COSTS. Our HQ at Asten is trying to sort out the mess, get some orders from Hamburg as to whether we should flee or resist. The Reds caught us totally flat-footed and we need to hold out until we're issued some new orders and direction.<br/><br/>We're stuck at the base for the moment until the radio command net is organized. Predictably, our field radios have the wrong crystals and our code sheets are out of date. There's a land-line from here to Asten HQ still open, but we have to remain here at the Base to communicate.<br/><br/>You MUST keep the base secure enough for us to communicate with Asten HQ.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"A sneak attack. A day of infamy. It's hard to say for certain what's happening across Europe and the rest of the world, but one thing seems apparent: the Reds have launched a massive surprise air and land attack on NATO.<br/><br/>Battalion HQ tell us that there's a lot of jamming and EW going on. Through the fog, the emerging picture is grim. The Reds have pulled off a surprise on the order of Pearl Harbor, by launching a half-prepared first strike. To preserve secrecy, they didn't mobilize beforehand. Very sneaky.<br/><br/>The main forces for the initial assault are coming from an amphibious battle group in the Baltic that were supposedly just on war-game maneuvers. Talk about a live-fire exercise. Anyhow, this Russian fleet is parked only a dozen miles just offshore. Here. We're directly in the path of the initial assault.<br/><br/>"
			]
		];

		// create one task and set it as current
		PMC_objective1 = player createSimpleTask ["Defend the US Base"];
		PMC_objective1 setSimpleTaskDescription ["Defent the <marker name='start'>US Base</marker>", "Defend the US Base", "Defend the US Base"];
		PMC_objective1 setSimpleTaskDestination (getMarkerPos "start");
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
