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
  				"Name: Gordon McKenzie<br/>Rank: Staff Sergeant<br/>  MOS: 11B, Infantry<br/>Combat Medals: Bronze Star with V for Valor<br/><br/>No doubt about it, I'm a bonafide seasoned vet now. My mates, especially the virgin replacements, really look up to me and lean on me for every little drop of advice about how to stay alive in this hell.<br/><br/>Speaking of virgins, I wonder what happened to Sally after high school? I oughta look her up if... when... I get home.<br/><br/>"
			]
		];

// 5
		player createDiaryRecord
		[
			"Diary",
			[
				"5. COMMANDS & TACTICS:",
				"The Airbase will be a tough one. En route, keep low and keep your eyes on your flanks. Load up on anti-tank weapons, if you have any.<br/><br/>TIPS FROM ROMMEL #2: ""Breaking off combat is most easily accomplished after a successful offensive maneuver."" [ie, if you're going to need to move on, better to do so immediately after kicking some ass]<br/><br/>"
			]
		];
// 4
		player createDiaryRecord
		[
			"Diary",
			[
				"4. SERVICE & ORBAT:",
				"M101s have been sling-loaded under Chinooks and brought across the Sound, and are positioned at the old Red Army Base. There are mortars at Alverna. Four TLAMs are available as well, and don't feel bad about using them, because you have a rough day ahead. Don't forget the arty radio; it's over by the tents.<br/><br/>You've got medic support and an ammo truck.<br/><br/>"
			]
		];

// 3
		player createDiaryRecord
		[
			"Diary",
			[
				"3. EXECUTION/INTEL:",
				"Dearsum has lighter defenses which include infantry and some light armor vehicles. The Airbase has strong defenses with several patrols. We also believe there are snipers operating in the area.<br/><br/>"
			]
		];

// 2
		player createDiaryRecord
		[
			"Diary",
			[
				"2. YOUR MISSION:",
				"You and your regulars <marker name='start'>start</marker> from Alverna. Clear the town of <marker name='target1'>Dearsum</marker> and control the <marker name='target2'>Airbase</marker>.<br/><br/>The primary target is the main Airbase on Ummanz and the adjacent town of Dearsum. If we can seize this air link to the mainland, the remaining Reds will be in a bad position. And we'll be a step closer to putting the Otomat Mk2 heavy anti-ship missiles on the north coast, converting these islands into unsinkable guided missile warships.<br/><br/>You and your soldiers <marker name='start'>start</marker> from the port town of Alverna. Proceed east to attack the town of <marker name='target1'>Dearsum</marker>. Then attack and capture the <marker name='target2'>Airbase</marker> to the south.<br/><br/>Well, it's ten-to-one odds stacked against you. It'll be a miracle if you pull this one off. There's no choice in the matter; you're all we have for this critical task.<br/><br/>Good luck.<br/><br/>Rules of Engagement: Condition Red, weapons free. Shoot everything you see in front of you, but no wild goose chases. Save your bullets for the Reds that stand in the way of your mission.<br/><br/>"
			]
		];

// 1
		player createDiaryRecord
		[
			"Diary",
			[
				"1. WAR SITUATION:",
				"The enemy has begun firing chemical shells into Kiel, in callous disregard to the civilians trapped there. The dockyards are ablaze.<br/><br/>Farther south, things aren't much better. Today, the Reds made a big paradrop at Stuttgart Airport under cover of non-nuclear IRBM attacks, coupled with an all-out air effort. The airport security and ground personnel made a heroic defensive stand but were torn apart. Immediate counterattacks failed. So, the enemy now has a temporary air bridge behind friendly lines.<br/><br/>Only in our small sector are things going well. The Reds on Rugen-Ummanz are reeling, and the General Staff likes to reinforce success. So, for the moment, the big push is on.<br/><br/><br/><br/>"
			]
		];

		PMC_objective2 = player createSimpleTask ["Capture the Airbase"];
		PMC_objective2 setSimpleTaskDescription ["Capture the <marker name='target2'>Airbase</marker>", "Capture the Airbase", "Capture the Airbase"];
		PMC_objective2 setSimpleTaskDestination (getMarkerPos "target2");
		
		PMC_objective1 = player createSimpleTask ["Clear Dearsum"];
		PMC_objective1 setSimpleTaskDescription ["Clear <marker name='target1'>Dearsum</marker>", "Clear Dearsum", "Clear Dearsum"];
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
