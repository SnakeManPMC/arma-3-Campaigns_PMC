
if (!alive PMC_co) exitWith
{
	PMC_objective1 setTaskState "FAILED";
	hint "The US CO is KIA.";
};

PMC_co globalChat "Hello. I was informed of your arrival.";
sleep 5;

PMC_co globalChat "Sorry but we have no additional information about your girlfriend.";
sleep 5;

PMC_co globalChat "Try to collect Tokarev pistols as trophys.";
sleep 5;

PMC_co globalChat "We will contact you when we have more information. Until that, good luck.";
sleep 5;

PMC_objective1 setTaskState "SUCCEEDED";
