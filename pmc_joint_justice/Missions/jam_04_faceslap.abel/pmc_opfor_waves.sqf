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
