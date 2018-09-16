
[] execVM "briefing.sqf";

PAPABEAR=[West,"HQ"];

// play some tunes baby
playmusic ["7thmylife",0]

rpos = random 8;
rpos = rpos - (rpos mod 1);

// here we make the colonel to appear in random houses every time.
if (rpos == 0) then { col1 setpos getpos pos1; colbuddy setpos getpos pos1; };
if (rpos == 1) then { col1 setpos getpos pos2; colbuddy setpos getpos pos2; };
if (rpos == 2) then { col1 setpos getpos pos3; colbuddy setpos getpos pos3; };
if (rpos == 3) then { col1 setpos getpos pos4; colbuddy setpos getpos pos4; };
if (rpos == 4) then { col1 setpos getpos pos5; colbuddy setpos getpos pos5; };
if (rpos == 5) then { col1 setpos getpos pos6; colbuddy setpos getpos pos6; };
if (rpos == 6) then { col1 setpos getpos pos7; colbuddy setpos getpos pos7; };
if (rpos == 7) then { col1 setpos getpos pos8; colbuddy setpos getpos pos8; };
