/*
	Versão : 0.2
	Nome : statusBar.sqf
	Autor : Bosco
	Data de Criação : 07/02/2016

*/

waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
	systemChat format["Willkommen auf Staat der Visionäre", 3];
	_rscLayer = "osefStatusBarAdmin" call BIS_fnc_rscLayer;
	_rscLayer cutRsc["osefStatusBarAdmin","PLAIN"];
	[] spawn
	{

		uiSleep 5;
		_colourDefault 	= parseText "#ffffff"; //Color Default
		_colourExtra	= parseText "#38bee1";
		_colour108		= parseText "#FF7000";
		_colour107		= parseText "#FF9000";
		_colour106		= parseText "#FFBB00";
		_colour105		= parseText "#FFCC00";
		_colour104		= parseText "#81CCDD";
		_colour103		= parseText	"#33AACC";
		_colour102		= parseText "#3388CC";
		_colour101		= parseText "#3366CC";
		_colour100 		= parseText "#00FF00";
		_colour90 		= parseText "#98FB98";
		_colour80 		= parseText "#FFA07A";
		_colour70 		= parseText "#FFA500";
		_colour60 		= parseText "#FF8C00";
		_colour50 		= parseText "#FF6347";
		_colour40 		= parseText "#FF4500";
		_colour30 		= parseText "#FF0000";
		_colour20 		= parseText "#FF0000";
		_colour10 		= parseText "#FF0000";
		_colour0 		= parseText "#FF0000";
		_colourDead 	= parseText "#1C1C1C";
		_uid = getPlayerUID player;


	while {true} do
	{

		uiSleep 1;


		if(isNull ((uiNamespace getVariable "osefStatusBarAdmin")displayCtrl 55554)) then
		{
			diag_log "statusbar is null create";
			disableSerialization;
			_rscLayer = "osefStatusBarAdmin" call BIS_fnc_rscLayer;
			_rscLayer cutRsc["osefStatusBarAdmin","PLAIN"];
		};


		_unit = _this select 0;
		_damage = round ((1 - (damage player)) * 100);
		_dinheiro = [life_cash] call life_fnc_numberText;
		_banco = [life_atmbank] call life_fnc_numberText;
		_serverFPS = round diag_fps;
		_grid = mapGridPosition  player; _xx = (format[_grid]) select  [0,3];
		_yy = (format[_grid]) select  [3,3];
		_time = serverTime;
		_hours = (floor(_time/60));
		_minutes = (_time - (_hours * 60));

		switch(_minutes) do
	{
		case 9: {_minutes = "09"};
		case 8: {_minutes = "08"};
		case 7: {_minutes = "07"};
		case 6: {_minutes = "06"};
		case 5: {_minutes = "05"};
		case 4: {_minutes = "04"};
		case 3: {_minutes = "03"};
		case 2: {_minutes = "02"};
		case 1: {_minutes = "01"};
		case 0: {_minutes = "00"};
	};

	//Damage
		_colourDamage = _colourDefault;
		if(_damage >= 100) then{_colourDamage = _colour100;};
		if((_damage >= 90) && (_damage < 100)) then {_colourDamage =  _colour100;};
		if((_damage >= 80) && (_damage < 90)) then {_colourDamage =  _colour80;};
		if((_damage >= 70) && (_damage < 80)) then {_colourDamage =  _colour70;};
		if((_damage >= 60) && (_damage < 70)) then {_colourDamage =  _colour60;};
		if((_damage >= 50) && (_damage < 60)) then {_colourDamage =  _colour50;};
		if((_damage >= 40) && (_damage < 50)) then {_colourDamage =  _colour40;};
		if((_damage >= 30) && (_damage < 40)) then {_colourDamage =  _colour30;};
		if((_damage >= 20) && (_damage < 30)) then {_colourDamage =  _colour20;};
		if((_damage >= 10) && (_damage < 20)) then {_colourDamage =  _colour10;};
		if((_damage >= 1) && (_damage < 10)) then {_colourDamage =  _colour0;};
		if(_damage < 1) then{_colourDamage =  _colourDead;};


	//Icons and position
		((uiNamespace getVariable "osefStatusBarAdmin")displayCtrl 55554)ctrlSetStructuredText parseText
			format["
			<t color='%10'><img size='1.0' image='icons\jogadores.paa' color='%19'/> %2</t>
			<t color='%10'><img size='1.0' image='icons\policia.paa' color='%19'/> %11</t>
			<t color='%10'><img size='1.0' image='icons\resgate.paa' color='%19'/> %12</t>
			<t color='%10'><img size='1.0' image='icons\desempenho.paa' color='%19'/> %4</t>
			<t color='%10'><img size='1.0' image='icons\compass.paa' color='%19'/> %7</t>
			<t color='%10'><img size='1.0' image='icons\health.paa' color='%19'/> %3%1</t>
			<t color='%10'><img size='1.0' image='icons\bank.paa' color='%19'/> %8</t>
			<t color='%10'><img size='1.0' image='icons\money.paa' color='%19'/> %10</t>
			<t color='%10'><img size='1.0' image='icons\uptime.paa' color='%19'/> %9</t>",


			//Position 2
					"%",
					civilian countSide playableUnits,
					_damage,
					_serverFPS,
					_colourDefault,
					_colourDamage,
					_grid,
					_banco,
					_time,
					_dinheiro,
					west countSide playableUnits,
					independent countSide playableUnits,
					format["%1/%2",_xx,_yy],
					_colourExtra
				];

		};
};