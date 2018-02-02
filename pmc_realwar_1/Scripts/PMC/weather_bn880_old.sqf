
_setover =
{
	if (DayTime > fogStart && DayTime < fogStart + _fT && _sF != 0) then
	{
		_sF=0;
		0 SetFog(((DayTime - fogStart)/_fT)*0.50);
		(_fT*3600-((DayTime-fogStart)*_fT*1800)) SetFog 0.50;
		if (weatherreport) then
		{
			player globalchat format["Forcast is: Heavy fog for %1 hour(s).",fogend-daytime+_fT];
		};
	};

	if (DayTime > fogStart + _fT && DayTime < fogEnd && _sF != 1) then
	{
		_sF=1;
		0 SetFog 0.50;
		if (weatherreport) then
		{
			player globalchat format["Forcast is: Heavy fog for at least %1 hour(s).",fogend+_fT-daytime];
		};

		if (DayTime > fogEnd && DayTime < fogEnd + _fT && _sF != 2) then
		{
			0 SetFog ((1-((DayTime - fogEnd)/_fT))*0.50);
			(_fT*3600-((DayTime-fogEnd)*_fT*1800)) SetFog 0.0;
			_sF=2;
		};

		if (_sF == -1) then
		{
			_sF=2;
		};

		if (weatherstop) exitWith {};
		// not needed now goto"monitor"
	};
};


_check =
{
	if (DayTime > startOvercast && DayTime < startOvercast + _oT && _sO != 0) then
	{
		0 SetOvercast ((DayTime - startOvercast)/_oT);
		(1800-((DayTime-startOvercast)*3600))SetOvercast 1.0;
		_sO=0;
		if (weatherreport) then
		{
			player globalchat format["Weather Forecast: Overcast conditions expected, should clear in %1 hours.",endovercast-daytime+_oT];
			[] call _setover;
		};
	};

	if (DayTime > startOvercast + _oT && DayTime < endOvercast && _sO != 1) then
	{
		0 SetOvercast 1.0;
		_sO=1;
		if (weatherreport) then
		{
			player globalchat format["Weather Forcast: Currently under overcast, Clear skies expected at %1.",endovercast+_oT];
			[] call _setover;
		};
	};

	if (DayTime > endOvercast && DayTime < endOvercast + _oT && _sO != 2) then
	{
		0 SetOvercast (1-((DayTime - endOvercast)/_oT));
		(1800-((DayTime-endOvercast)*3600)) SetOvercast 0.0;
		_sO=2;
		if (weatherreport) then
		{
			player globalchat format["Weather Forecast: Clear conditions, cloud cover and possible rain in %1 hours.",abs(daytime-startovercast+_oT)];
			[] call _setover;
		};
	};

	if (weatherreport && _sO == -1) then
	{
		_sO=2;
		player globalchat format["Weather Forecast: Clear conditions, cloud cover and possible rain in %1 hours.",abs(daytime-startovercast+_oT)];
	};
};


// INITIAL SETTING
// report weather?
weatherreport=true;

_sO=-1;
_sF=-1;
// OVERCAST TRANSITION
_oT=0.5;
// FOG TRANSITION
_fT=0.5;
sleep 1;

[] call _check;

while (true) do
{
	sleep 333;
	[] call _check;
};
