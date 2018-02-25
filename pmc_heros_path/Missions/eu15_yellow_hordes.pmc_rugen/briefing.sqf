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
  				"Name: Gordon McKenzie<br/>Rank: Gunnery Sergeant<br/>  MOS: 11B, Infantry<br/>Combat Medals: Bronze Star with V for Valor<br/><br/>Hmmm, I don't like being on the defensive. Just sitting here, doing nothing, is frying my nerves. Waiting for... Christ only knows what. Downright spooky, it is.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"Let the gunships take care of the armor. Just keep your heads down until the AH-64s are finished. Your job is to take out the Red infantry, who will probably be shooting their PKs at your helos. Also, spend some time ID'ing armor targets for the helo pilots, using your field glasses, so they can fully support you. <br/><br/>TIPS FROM ROMMEL #4: ""A very superior enemy was overcome by committing our last men at the focal point of the defense and by moving up forces from other less endangered positions. The leader must be very active in such situations.""<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"Your support today includes AH-64 Apache gunships flying out of Ummanz Airbase, who have orders to interdict all enemy armor near Tubbergen.<br/><br/>If artillery is the queen of battle, and the Paladin the king, the MLRS is surely the emperor. You have an MLRS and four TLAMs, PLUS our full suite of organic fire support to aid in the Battle of Tubbergen. That includes mortars, M101s, and M109s.<br/><br/>There's a parked M2A2 Bradley available, as well as a static .50 cal HMG, but be cautious using these.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"The enemy consists of a kampfgruppe of infantry and armored vehicles heading directly towards you, including MBTs. You need to avoid becoming too closely engaged; use your arty spotting skills instead of your LMG skills on these bruise boys.<br/><br/>NATO air forces, through an all-out effort, have won temporary air superiority. The AH-64s can therefore fly today.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You <marker name='start'>start</marker> from Tubbergen. Defend it against the Russian <marker name='target1'>attack</marker> from the south.<br/><br/>Defend at all costs...at all costs. You and your grunts <marker name='start'>start</marker> in the key crossroads town of Tubbergen. Tubbergen blocks the Red advance toward our anti-ship rocket launchers to the north. You'll doubtless hear their armored <marker name='target1'>attack</marker> coming up from the south long before you see them.<br/><br/>Rules of Engagement: Condition Red, weapons free. The law of the jungle is your ROE. If and when you see that the Russian attack has been stopped, use the radio command (0-0-1) to call end of the operation. Don't do it until you're positive that the enemy attack is totally blunted. If you live through this, we're pulling your unit out of the line for a rest.<br/><br/>Hit 'em hard. A breakthrough would be disastrous.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"The Reds are utterly pissed, now that they've figured out why we've landed on Rugen-Ummanz. Our Otomat Mk2 high-velocity OTH anti-ship missile launchers on the north coastline have been taking pot-shots at Red Banner Fleet. Several LSTs and cargo ships have joined a Sargasso Sea of sunken ships at the bottom of the Baltic.<br/><br/>The Red amphibious invasion fleet at Jutland has been almost totally cut off from supplies and reinforcements. The Reds are frantic, and have launched radar-seeking cruise missiles and massive artillery barrages at the Otomats. However, the towed Otomats are using shoot-and-scoot tactics, moving from one camouflaged position to another.<br/><br/>The angry Red garrison from Asten is heading our way in a big hurry.<br/><br/>"
			]
		];

		PMC_objective1 = player createSimpleTask ["Defend Tubbergen"];
		PMC_objective1 setSimpleTaskDescription ["Defend <marker name='start'>Tubbergen</marker>", "Defend Tubbergen", "Defend Tubbergen"];
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
