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
  				"Name: Gordon McKenzie<br/>Rank: Sergeant<br/>  MOS: 11B, Infantry<br/>Combat Medals: None<br/><br/>Alessya or Uhlie? Hell, why not both? Nothing to lose by asking. Except maybe a slap in the face..."
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"As the Sergeant temporarily in charge of the base security detail, you have a radio to keep you in touch with Bravo Black One back at the base, even when you're off duty.<br/><br/>To find your way around, use your map and GPS receiver. Also, your radioman has a GPS, and can mark his location on the map for you. This can save you some time in plotting your location. Order him via radio to report status (f2-5-5); if you're near him, you now know your own location.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"You could have left your sidearm back at camp, but are within regs to carry a 9mm to town. And let's face it, that's why the ladies are impressed by police-types, they like the authority of a guy with a uniform and gun.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"An odd-sounding helicopter went past earlier...<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and Alpha Team <marker name='start'>start</marker> in town. Chill out; that's an order, Gordon.<br/><br/>You and the rest of Alpha Team <marker name='start'>start</marker> at the town of Vaals on the Baltic island of Rugen. You're on leave and fraternizing with the local talent. The remainder of your squad is located at the <marker name='usbase'>US Base</marker> compound a few minute's drive to the west.<br/><br/>Your mission is to have a good time and keep your strength up. (wink)"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"If you have to be a grunt, Rugen-Ummanz is the perfect place to be garrisoned. Rugen is a tourist destination for German nationals, and is known for nude sunbathing camps and fine beaches.<br/><br/>Hitler built a resort here, Prora, during the heyday of the Third Reich. Nazi volunteers from the ""Strength through Joy"" organization used slave labor for the notoriously ugly resort buildings that now lay abandoned on the west coast. The idea was that happy workers are productive workers, and the resort would help the war effort.<br/><br/>The US Army keeps a couple of small bases here to guard the radar and communications facilities. The Wehrmacht also has a presence in the form of ""Kustenwache"" coast guards and small naval patrols.<br/><br/>"
			]
		];

		// create one task and set it as current
		PMC_objective0 = player createSimpleTask ["Chill out"];
		PMC_objective0 setSimpleTaskDescription ["Chill out", "Chill out", "Chill out"];
		PMC_objective0 setSimpleTaskDestination (getMarkerPos "start");
		player setCurrentTask PMC_objective0;
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
