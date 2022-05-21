/*
2022-05-21T01:16:00Z
home base aka resistance player's hideout is detected by soviets, then script is launched

mission.sqm trigger specs:

		class Item39
		{
			dataType="Trigger";
			position[]={23099.471,0.012000084,6596.396};
			class Attributes
			{
				text="HomeBase found by East";
				condition="call{{_x knowsabout HomeBase > 0.99} count aieast > 0}";
				onActivation="call{0 = execVM ""PMC\PMC_homebasefound.sqf"";}";
				sizeA=0;
				sizeB=0;
			};
			id=39;
			type="EmptyDetector";
			atlOffset=2.9820001;
		};
*/

// PMCTODO fortunately for player, this feature is disabled now, too lazy to check the proper syntax to make it nice.
