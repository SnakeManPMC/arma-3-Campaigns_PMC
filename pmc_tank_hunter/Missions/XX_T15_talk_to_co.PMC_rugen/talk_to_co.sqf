
if (!alive PMC_co) exitWith
{
	PMC_objective1 setTaskState "FAILED";
	hint "The US CO is KIA.";
};

PMC_co globalChat "Hello. Its nice to see you again, I believe the fighting goes well.";
sleep 5;

PMC_co globalChat "We definitely are giving the russians their moneys worth.";
sleep 5;

PMC_co globalChat format["Russian casualies are now at %1 KIA, so we are really hurting them.", PMC_EastKIA];
sleep 5;

PMC_co globalChat format["You have now collected %1 tokarev as trophys, good work.", PMCTrophyCount];
sleep 5;

PMC_co globalChat "Yeah, okay... we still have no new information about your lost girlfriend. I'm sorry.";
sleep 5;

PMC_co globalChat "We surely will contact you when we have more information. Until that, stay sharp and good luck.";
sleep 5;

PMC_objective1 setTaskState "SUCCEEDED";
