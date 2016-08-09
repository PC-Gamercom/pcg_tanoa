#include "\life_server\script_macros.hpp"
/*
	File: fn_cleanup.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Server-side cleanup script on vehicles.
	Sort of a lame way but whatever.
*/
private "_deleted";
_deleted = false;
while {true} do {
	private["_veh","_units","_vFuel","_vHitBody","_vHitEngine","_vHitFuel","_vHitLFWheel","_vHitRFWheel","_vHitLF2Wheel","_vHitRF2Wheel","_vHitLMWheel","_vHitRMWheel","_vHitLBWheel","_vHitRBWheel"]];
	sleep (60 * 60);
	{
		_veh = _x;
		_vehicleClass = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "vehicleClass");

		if(_vehicleClass in ["Car","Air","Ship","Armored","Submarine"]) then {
			_dbInfo = _veh getVariable["dbInfo",[]];
			_units = {(_x distance _veh < 300)} count playableUnits;
			if(count crew _x == 0) then {
				switch (true) do {
					case ((_x getHitPointDamage "HitEngine") > 0.7 && _units == 0) : {deleteVehicle _x; _deleted = true;};
					case ((_x getHitPointDamage "HitLFWheel") > 0.98 && _units == 0) : {deleteVehicle _x; _deleted = true;};
					case ((_x getHitPointDamage "HitLF2Wheel") > 0.98 && _units == 0) : {deleteVehicle _x; _deleted = true;};
					case ((_x getHitPointDamage "HitRFWheel") > 0.98 && _units == 0) : {deleteVehicle _x; _deleted = true;};
					case ((_x getHitPointDamage "HitRF2Wheel") > 0.98 && _units == 0) : {deleteVehicle _x; _deleted = true;};
					case (_units == 0): {deleteVehicle _x; _deleted = true;};
				};
			};

			if(_deleted) then {
				waitUntil {isNull _veh};
				_deleted = false;
			};

			if(isNull _veh) then {
				if(count _dbInfo > 0) then {
					systemChat "Fixing...";
					_uid = _dbInfo select 0;
					_plate = _dbInfo select 1;
					_trunk = [[],0];
					_cargo = [];
					
					/*
 **************************
 * SPRIT
 **************************
*/
_vFuel = fuel _vehicle;
_vFuel = 1;
/*
 **************************
 * DAMAGE ZUWEISUNG
 **************************
*/
if (_vehicle isKindOf "LandVehicle") then
{ 
 _vHitBody = _vehicle getHitPointDamage "HitBody";
 _vHitEngine = _vehicle getHitPointDamage "HitEngine";
 _vHitFuel = _vehicle getHitPointDamage "HitFuel";
 _vHitLFWheel = _vehicle getHitPointDamage "HitLFWheel";
 _vHitRFWheel = _vehicle getHitPointDamage "HitRFWheel";
 _vHitLF2Wheel = _vehicle getHitPointDamage "HitLF2Wheel";
 _vHitRF2Wheel = _vehicle getHitPointDamage "HitRF2Wheel";
 _vHitLMWheel = _vehicle getHitPointDamage "HitLMWheel";
 _vHitRMWheel = _vehicle getHitPointDamage "HitRMWheel";
 _vHitLBWheel = _vehicle getHitPointDamage "HitLBWheel";
 _vHitRBWheel = _vehicle getHitPointDamage "HitRBWheel"; 
}else{
 _vHitBody = 0;
 _vHitEngine = 0;
 _vHitFuel = 0;
 _vHitLFWheel = 0;
 _vHitRFWheel = 0;
 _vHitLF2Wheel = 0;
 _vHitRF2Wheel = 0;
 _vHitLMWheel = 0;
 _vHitRMWheel = 0;
 _vHitLBWheel = 0;
 _vHitRBWheel = 0;
};
					
					_query = format[
 "UPDATE vehicles SET 
 active='0',
 impound='0',
 inventory='%3',
 gear='%4',
 fuelstand='%5',
 HitBody='%6',
 HitEngine='%7',
 HitFuel='%8',
 HitLFWheel='%9',
 HitRFWheel='%10',
 HitLF2Wheel='%11',
 HitRF2Wheel='%12',
 HitLMWheel='%13',
 HitRMWheel='%14',
 HitLBWheel='%15',
 HitRBWheel='%16' 
 WHERE pid='%1' AND plate='%2'",
 _uid,
 _plate,
 _trunk,
 _cargo,
 _vFuel,
 _vHitBody,
 _vHitEngine,
 _vHitFuel,
 _vHitLFWheel,
 _vHitRFWheel,
 _vHitLF2Wheel,
 _vHitRF2Wheel,
 _vHitLMWheel,
 _vHitRMWheel,
 _vHitLBWheel,
 _vHitRBWheel
 ];		
					[_query,1] call DB_fnc_asyncCall;
				};
			};
		};
	} foreach vehicles;

	sleep (3 * 60); //3 minute cool-down before next cycle.
	{
		if((typeOf _x) in ["Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F", "Land_Can_V3_F","Land_Money_F","Land_Suitcase_F"]) then {
			deleteVehicle _x;
		};
	} foreach (allMissionObjects "Thing");

	sleep (2 * 60);
	{
		deleteVehicle _x;
	} foreach (allMissionObjects "GroundWeaponHolder");
};
