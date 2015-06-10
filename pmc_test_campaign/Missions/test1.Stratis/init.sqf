
player createDiaryRecord ["Diary", ["Situation", "Enemy is advancing to our position."]];

tskExample1 = player createSimpleTask ["Defend"];
tskExample1 setSimpleTaskDescription ["Defend airbase against OPFOR attauck from EAST.", "Defend Airbase", "Defend Airbase"];
tskExample1 setSimpleTaskDestination (getMarkerPos "defend"); //Make sure you have an empty marker called 'mkrObj1', 
// and you'll see a semi-transparant circular marker which will light up when you set the task as active.

player setCurrentTask tskExample1; // This will highlight the objective marker, and show him the through the HUD where the objective is.

//tskExample1 setTaskState "SUCCEEDED"; // Makes the checkbox green
//tskExample1 setTaskState "FAILED"; // Puts a red cross in the checkbox
//tskExample1 setTaskState "CANCELED"; // Puts a grey diagonal line through the checkbox
tskExample1 setTaskState "CREATED"; // Clears the checkbox (makes it look like you've just created it)
