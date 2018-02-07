waitUntil {!(isNull player)};
waitUntil {player == player};

switch (side player) do
{
	case WEST:
	{
		player createDiaryRecord ["Diary", ["Designers Notes", "PMC Distant Freedom mission created 2018-02-05T19:51:00Z by Snake Man, PMC.<br/><br/>Addons used: PMC 51km Desert, AGS Industrial, AGS Port, PMC Terrain Clutter and CUP."]];

		player createDiaryRecord ["Diary", ["Diary", ""]];

		player createDiaryRecord ["Diary", ["Tactical", "2010-03-06T21:15:00Z, weather."]];

		player createDiaryRecord ["Diary", ["Orders", "Defend <marker name='pmc_marker_obj_1'>city of Talib</marker> against enemy counter attack."]];

		player createDiaryRecord ["Diary", ["Intel", ""]];

		player createDiaryRecord ["Diary", ["Gen sitrep", "You are locaed at <marker name='pmc_marker_start'>Talib</marker>."]];
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
