// v1c Civilian Vehicles from [STELS]Zealot

if (not isserver) exitwith {};

zlt_civveh_round = 0;
zlt_civveh_vehicles = [];
zlt_civveh_spawnedloc = [];

zlt_rnd_seed = 1;

zlt_fnc_random = {
  private ["_a","_c","_m"];
  _a = 75;
  _c = 0;
  _m = 65537;
  zlt_rnd_seed = ( zlt_rnd_seed * _a + _c ) mod (_m);
  (zlt_rnd_seed / _m) ;
};


zlt_fnc_selectrandom = {
	_this select floor ( ([] call zlt_fnc_random) * count (_this));
};

zlt_fnc_civvehs = {
	_debug = [_this, 1, false] call bis_fnc_param;
	_lrange = _this select 2;
	_cars = _this select 3;
	_t1 = diag_ticktime;
	

	_startpos= _this select 0;
	_houses = _startpos nearobjects ["House",_lrange];
	//_vehmax =  _cars;
	_vehmax = 	(round ((sqrt (count _houses)) * 0.5)) max 1;
	
	_classes = ["C_Offroad_01_F"];

	_vehs = 0;
	_attemps = 0;
	
	_class = _classes select 0;
	zlt_rnd_seed =  ((_startpos select 0) + (_startpos select 1) mod 65537);
	while {_vehs < _vehmax and _attemps < 10} do {
		//diag_log ["CV",_startpos, _lrange, _houses];
		
		_house = _houses call zlt_fnc_selectrandom;
		
		_housepos = _house modeltoworld [0,0,0];
		_newpos = _housepos findEmptyPosition [ 3 , 15, _class ];
		_houses = _houses - [_house];
		if (count _newpos == 0) then {
			_attemps = _attemps + 1;
		} else {
			_veh = _class createVehicle (_newpos ) ;
			_veh setvariable ["zlt_civveh", true];
			zlt_civveh_vehicles set [count zlt_civveh_vehicles, _veh];
			
			_direction = (random 360);
			_nearRoads = _newpos nearRoads 10;
      
			if(count _nearRoads > 0) then
			{
				_road = _nearRoads select 0;
				_roadConnectedTo = roadsConnectedTo _road;
				if (count _roadConnectedTo > 0) then {
					_connectedRoad = _roadConnectedTo select 0;
					_direction = [_road, _connectedRoad] call BIS_fnc_DirTo;
				};
			}; 
		
			_veh setdir _direction;
			_attemps = 0;
			_vehs = _vehs + 1;
			if (_debug) then {
				["crt"+str(_newpos), _newpos] call zlt_fnc_createmarkerlocal;
			};
		};
	};
	_t2 = diag_ticktime;
	if (_debug) then {
		diag_log str ["civeh.sqf", _t2-_t1];
	};
};


zlt_civ_checkloop = {


	zlt_civveh_notemptyloc = [];

	{
		_veh = vehicle _x;
		_isInVeh = (vehicle _x != _x);
		
		
		// or _veh getvariable ["zlt_civ_round", -1] != zlt_civveh_round
		if (not _isInVeh or {(_veh getvariable ["zlt_civ_round", -1]) != zlt_civveh_round and _veh isKindOf "LandVehicle"}) then {
			_dist = 1000;
			_locations = nearestLocations [(getpos vehicle _x), ["NameCityCapital","NameCity","NameVillage"], _dist];
			_locations2 = nearestLocations [(getpos vehicle _x), ["NameCityCapital","NameCity","NameVillage"], 2500];
			{
				if ( not (_x in zlt_civveh_spawnedloc) ) then {
					_lrange = 50; _cars = 1;
					switch (type _x) do {
						case ("NameCityCapital") : {_lrange = 250; _cars = 7;};
						case ("NameCity") : {_lrange = 150; _cars = 3;};
					};
					_pos = position _x;
					[ [_pos select 0, _pos select 1, 0], false, _lrange, _cars] call zlt_fnc_civvehs;
					zlt_civveh_spawnedloc set [count zlt_civveh_spawnedloc, _x ]; 
//					_x setside east;
				};
			} foreach _locations;
			{
				zlt_civveh_notemptyloc set [count zlt_civveh_notemptyloc, _x];
			} foreach _locations2;
			if (_isInVeh) then { _veh setvariable ["zlt_civ_round", zlt_civveh_round];};
		};
	} foreach playableunits;
	
	
	{
		_pos = [(position _x) select 0, (position _x) select 1, 0];
		_ent = ( (_pos) nearEntities ["C_Offroad_01_F", 300] );
		{
			if ( _x getvariable ["zlt_civveh", false] and {count crew _x == 0 and fuel _x == 1}) then {
				deletevehicle _x;
			};
		} foreach _ent;
		zlt_civveh_spawnedloc = zlt_civveh_spawnedloc - [_x];
	} foreach (zlt_civveh_spawnedloc-zlt_civveh_notemptyloc);

	zlt_civveh_round = zlt_civveh_round + 1;
};

while {true} do {
//scan loop

	sleep 3.4; //magic number
	[] call zlt_civ_checkloop;

};