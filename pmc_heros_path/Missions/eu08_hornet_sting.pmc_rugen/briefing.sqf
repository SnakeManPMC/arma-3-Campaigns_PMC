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
  				"Name: Steve Gross<br/>Rank: Staff Sergeant<br/>  MOS: 12A, Pioneer (Ranger)<br/>Combat Medals: None<br/><br/>This morning, I personally witnessed the most selfless act I'm ever likely to see. We had just run into a mine field. One of ours, Mark, was caught in the middle. Just then, a firefight broke out, and a BMP came over a nearby hill. Mark was shot and fell. The BMP came on, and was clearly intent on crushing Mark's wounded body.<br/><br/>His best friend, Jim, instantly shrugged off his gear and sprinted out into the minefield. About halfway to his goal, Jim stepped on an anti-personnel mine. It blew his right foot off at the ankle, and shrapnel severed all the fingers on one hand and left one eye dangling from its socket.<br/><br/>Without missing a beat, Jim ran to Mark, stumping all the way on his severed ankle. He evidently couldn't pick up Mark's weight due to injuries. So, instead, he picked up a nearby anti-tank mine, and ran forward toward the advancing BMP, and crammed the thing in the vehicle's track.<br/><br/>Unfortunately, all were killed in the explosion, including the BMP crew and Mark.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"Steve, suggest you swap guns for an M249 SPW, to have the best shooter (that would be you) on a LMG today. Fire support is going to be critical against the expected Red horde. Remember to use very short bursts for best gun control and accuracy.<br/><br/>Thought: the walls at the base can easily be knocked down with an RPG... If you HAD an RPG, that is.<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"We're still suffering from the loss of the supply chopper earlier, and are forced to send you in without heavy weapons. Top priority: grab some RPGs.<br/><br/>On the upside, along with Bravo platoon, there's an Apache gunship supposed to provide some kind of air cover for us.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Today marks the beginning of offensive operations against the Reds. Until now, all NATO operations have been defensive in nature. This is our first real counterattack of the war.<br/><br/>Today's mission is unspeakably important. Our attacks must buy us enough time that the big CAVALRY convoys of US troops can arrive in France and England. With a big effort, NATO warplanes have cleared a semi-safe air corridor for your helo insertion.<br/><br/>Partisans report that a couple of light armored vehicles are nearby. Infantry defenses at the base are pretty heavy. There's likely to be enemy reserve forces in the area, but their composition and strength remains unknown. Beware of the woods, they could conceal a lot of bad guys. Ensure the woods are clear prior to calling in the heli-borne reinforcements.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and Ranger Team ""Alpha"" <marker name='start'>start</marker> in a helo off the coast. From the <marker name='insert'>insertion LZ</marker>, go north and capture the <marker name='target1'>Army Base</marker>, then call for back-up via radio (0-0-1).<br/><br/>Sergeant, the big target today is to retake the main US Army base and barracks near Vaals. You and your Ranger Team, plus a backup platoon (Bravo), <marker name='start'>start</marker> in a CH-47 helo off the west coast of Rugen. The CH-47 will drop you all at an <marker name='insert'>insertion LZ</marker> near the base. You'll need to make a short overland march to the north. Capture the main US <marker name='target1'>Army Base</marker>.<br/><br/>Rules of Engagement: <b>Condition Yellow.</b> Bring your weapons to bear on only on the target, unless you're ambushed or pursued. Don't shoot your brothers in Bravo platoon by mistake.<br/><br/>Stay frosty out there.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"At the moment, our forces on the mainland are in deep trouble. The Reds have driven entirely across the Jutland peninsula, cutting off Kiel, and they've managed to seize the Kiel Canal. Next, they'll be attacking Kiel itself, shooting up naval ships in drydock with tank cannon fire. The enemy surprise amphibious attack on North Germany is paying dividends.<br/><br/>Center Army Group Command (CENTAG) reports enemy armored recon units are on the move in the Fulda Gap. The big push into central Germany has begun.<br/><br/>Everything hangs on the edge of a knife. This is the cusp. The attack on Rugen-Ummanz, which you're on the forefront of, is our attempt to relieve the pressure on Kiel. If we own these islands, our shore-based high-speed anti-ship missiles will sweep the Baltic sea lanes, and cut off the Reds in Jutland. Their amphibious operation, instead of being a brilliant Inchon-type victory, will be judo-flipped into a Gallipoli-type defeat.<br/><br/>Our goal: Seize and hold the US Army base on Rugen, and conduct future operations from it. There's some ammo there that fits your guns.<br/><br/>"
			]
		];
		PMC_objective2 = player createSimpleTask ["Call in reinforcements"];
		PMC_objective2 setSimpleTaskDescription ["Call in reinforcements", "Call in reinforcements", "Call in reinforcements"];
		
		PMC_objective1 = player createSimpleTask ["Capture the US Army Base"];
		PMC_objective1 setSimpleTaskDescription ["Capture the <marker name='target1'>US Army Base</marker>", "Capture the US Army Base", "Capture the US Army Base"];
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
