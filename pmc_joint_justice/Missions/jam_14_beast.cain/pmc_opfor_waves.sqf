/*

	PMCTODO - Straight port from SQS, the sqs didn't work in the fist place :)

*/
private["_t"];

_t = time;
// how long we wait for each wave to complete
_wavewait = (60*15);

//#wave1
sleep 10;
waitUntil
{
	sleep 5;
	(count aieast < 5 || (time - _t) > _wavewait);
};

PMC_wave2 = true;

_t = time;
//#wave2
sleep 10;
waitUntil
{
	sleep 5;
	(count aieast < 5 || (time - _t) > _wavewait);
};

PMC_wave3 = true;

_t = time;
//#wave3
sleep 10;
waitUntil
{
	sleep 5;
	(count aieast < 5 || (time - _t) > _wavewait);
};

PMC_wave4 = true;

_t = time;
//#wave4
sleep 10;
waitUntil
{
	sleep 5;
	(count aieast < 5 || (time - _t) > _wavewait);
};

PMC_wave5 = true;

_t = time;
//#wave5
sleep 10;
waitUntil
{
	sleep 5;
	(count aieast < 5 || (time - _t) > _wavewait);
};

PMC_wave6 = true;

_t = time;
//#wave6
sleep 10;
waitUntil
{
	sleep 5;
	(count aieast < 5 || (time - _t) > _wavewait);
};

PMC_wave7 = true;

_t = time;
//#wave7
sleep 10;
waitUntil
{
	sleep 5;
	(count aieast < 5 || (time - _t) > _wavewait);
};

PMC_wave8 = true;

// mission accomplished when 25 minutes passed
_wavewait = (60*10);
sleep _wavewait;
PMC_Waves_Done = true;
