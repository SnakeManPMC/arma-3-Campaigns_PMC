/*
2022-06-01T16:51:00Z
		class Item4
		{
			dataType="Trigger";
			position[]={4717.9385,339,10148.656};
			class Attributes
			{
				text="player onboard helo";
				condition="{_x in helo1} count units pmc_mfr1 == count units pmc_mfr1;";
				onActivation="helo1 flyInHeight 75; player sideChat ""Lets ride boys!"";";
				sizeA=0;
				sizeB=0;
				interuptable=1;
			};
			id=833;
			type="EmptyDetector";
		};
*/

[] spawn
{
	sleep 60;
	waitUntil
	{
		sleep 3;
		({_x in helo1} count units pmc_mfr1 == count units pmc_mfr1);
	};
	helo1 flyInHeight 75;
	player sideChat "Lets ride boys!";
	sleep 3;
	["t1", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

/*
		class Item5
		{
			dataType="Trigger";
			position[]={9668.3535,77.000587,13591.73};
			class Attributes
			{
				text="Recon dam - Done.";
				onActivation="0 = [] execVM ""recondamdone.sqf"";";
				sizeA=0;
				sizeB=0;
				interuptable=1;
				activationBy="ALPHA";
			};
			id=834;
			type="EmptyDetector";
			atlOffset=0.00038146973;
		};
*/

// 0 = [] execVM "recondamdone.sqf";
[] spawn
{
	sleep 60*5;

	waitUntil
	{
		sleep 10;
		(!isNil "pmc_obj1");
	};

	leader mfr sideChat "Dam recon complete. Over.";
	"target1" setMarkerTypeLocal "mil_dot";
	"target1" setMarkerColor "colorgreen";
	sleep 3;
	["t2", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

/*
		class Item6
		{
			dataType="Trigger";
			position[]={12081.201,158.89999,12701.425};
			class Attributes
			{
				text="Recon airstrip - Done.";
				onActivation="0 = [] execVM ""reconairstripdone.sqf"";";
				sizeA=0;
				sizeB=0;
				interuptable=1;
				activationBy="BRAVO";
			};
			id=835;
			type="EmptyDetector";
		};
*/

// 0 = [] execVM "reconairstripdone.sqf";
[] spawn
{
	sleep 60*10;

	waitUntil
	{
		sleep 10;
		(!isNil "pmc_obj2");
	};

	leader mfr sideChat "We have eyes on the airstrip, mission accomplished. Over.";
	"target2" setMarkerTypeLocal "mil_dot";
	"target2" setMarkerColor "colorgreen";
	pmc_obj2 = true;
	sleep 3;
	["t3", "SUCCEEDED", true] spawn BIS_fnc_taskSetState;
};

/*
		class Item7
		{
			dataType="Trigger";
			position[]={4600.145,339,10361.589};
			class Attributes
			{
				text="HQ reply mission complete";
				condition="pmc_obj1 && pmc_obj2";
				onActivation="PMCHQ sideChat ""Understood Alpha. Good job. Misson accomplished. HQ Out.""; pmc_mcomplete = true;";
				sizeA=0;
				sizeB=0;
				timeout[]={15,20,25};
				interuptable=1;
			};
			id=836;
			type="EmptyDetector";
		};
		class Item8
		{
			dataType="Trigger";
			position[]={4629.1846,339,10343.71};
			class Attributes
			{
				text="END";
				condition="pmc_mcomplete";
				sizeA=0;
				sizeB=0;
				timeout[]={15,20,25};
				interuptable=1;
				type="END1";
			};
			id=837;
			type="EmptyDetector";
		};
*/
[] spawn
{
	sleep 60*10;

	waitUntil
	{
		sleep 10;
		(!isNil "pmc_obj1" && !isNil "pmc_obj2");
	};

	sleep 7;
	PMCHQ sideChat "Understood Alpha. Good job. Misson accomplished. HQ Out.";
	sleep 7;

	"pmc_end1" call BIS_fnc_endMission;
};
