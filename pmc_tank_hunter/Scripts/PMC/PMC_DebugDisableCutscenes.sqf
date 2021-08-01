
// disable cutscenes by setting pmcmoff true or false

// this is not needed once T01 is fixed ;) 2021-08-01T13:59:00Z
if (isNil "PMC_MoviesOff") then
{
	PMC_MoviesOff = true;
};

if (PMC_MoviesOff) then
{
	PMC_MoviesOff = false;
	systemChat format["PMC_MoviesOff is now: %1", PMC_MoviesOff];
}
else
{
	PMC_MoviesOff = true;
	systemChat format["PMC_MoviesOff is now: %1", PMC_MoviesOff];
};

saveVar "PMC_MoviesOff";
