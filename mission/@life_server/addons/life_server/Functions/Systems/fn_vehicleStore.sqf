#include "\life_server\script_macros.hpp"
private["_vehicle","_impound","_vInfo","_vInfo","_plate","_uid","_query","_sql","_unit","_trunk","_vehItems","_vehMags","_vehWeapons","_vehBackpacks","_cargo","_vFuel","_vHitBody","_vHitEngine","_vHitFuel","_vHitLFWheel","_vHitRFWheel","_vHitLF2Wheel","_vHitRF2Wheel","_vHitLMWheel","_vHitRMWheel","_vHitLBWheel","_vHitRBWheel"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_impound = [_this,1,false,[true]] call BIS_fnc_param;
_unit = [_this,2,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle OR isNull _unit) exitWith {life_impound_inuse = false; (owner _unit) publicVariableClient "life_impound_inuse";life_garage_store = false;(owner _unit) publicVariableClient "life_garage_store";}; //Bad data passed.
_vInfo = _vehicle getVariable["dbInfo",[]];
if(count _vInfo > 0) then {
 _plate = _vInfo select 1;
 _uid = _vInfo select 0;
};
/*
 **************************
 * SPRIT
 **************************
*/
_vFuel = fuel _vehicle;
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

//Save vehicle inventory
if(EQUAL(LIFE_SETTINGS(getNumber,"save_veh_virtualItems"),1)) then {
 _trunk = _vehicle getVariable["Trunk",[[],0]];
 _trunk = [_trunk] call DB_fnc_mresArray;
} else {
 _trunk = [[],0];
};
if(EQUAL(LIFE_SETTINGS(getNumber,"save_veh_gear"),1)) then {
 _vehItems = getItemCargo _vehicle;
 _vehMags = getMagazineCargo _vehicle;
 _vehWeapons = getWeaponCargo _vehicle;
 _vehBackpacks = getBackpackCargo _vehicle;
 _cargo = [_vehItems,_vehMags,_vehWeapons,_vehBackpacks];
 _cargo = [_cargo] call DB_fnc_mresArray;
} else {
 _cargo = [];
};
if(_impound) then {
 if(count _vInfo == 0) then {
 life_impound_inuse = false;
 (owner _unit) publicVariableClient "life_impound_inuse";
 if(!isNil "_vehicle" && {!isNull _vehicle}) then {
 deleteVehicle _vehicle;
 };
 } else {
 	/*
 **************************
 * DATENBANK EINTRAG
 * ORIGINAL QUERY
 *  _query = format["UPDATE vehicles SET active='0',
 impound='0', inventory='%3', gear='%4', fuel='%5'
 WHERE pid='%1' AND plate='%2'",_uid,_plate,_trunk,_cargo,_fuel _vehicle];
 **************************
*/ 
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
 _thread = [_query,1] call DB_fnc_asyncCall;
 //waitUntil {scriptDone _thread};
 if(!isNil "_vehicle" && {!isNull _vehicle}) then {
 deleteVehicle _vehicle;
 };
 life_impound_inuse = false;
 (owner _unit) publicVariableClient "life_impound_inuse";
 };
} else {
 if(count _vInfo == 0) exitWith {
 [1,(localize "STR_Garage_Store_NotPersistent")] remoteExecCall ["life_fnc_broadcast",(owner _unit)];
 life_garage_store = false;
 (owner _unit) publicVariableClient "life_garage_store";
 };
 if(_uid != getPlayerUID _unit) exitWith {
 [1,(localize "STR_Garage_Store_NoOwnership")] remoteExecCall ["life_fnc_broadcast",(owner _unit)];
 life_garage_store = false;
 (owner _unit) publicVariableClient "life_garage_store";
 };
 	/*
 **************************
 * DATENBANK EINTRAG
 * ORIGINAL QUERY
 *  _query = format["UPDATE vehicles SET active='0'
 ,impound='0', inventory='%3', gear='%4',
 fuel='%5' WHERE pid='%1' AND plate='%2'",_uid,_plate,_trunk,_cargo,fuel _vehicle];
 **************************
*/ 
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
 _thread = [_query,1] call DB_fnc_asyncCall;
 //waitUntil {scriptDone _thread};
 if(!isNil "_vehicle" && {!isNull _vehicle}) then {
 deleteVehicle _vehicle;
 };
 life_garage_store = false;
 (owner _unit) publicVariableClient "life_garage_store";
 [1,(localize "STR_Garage_Store_Success")] remoteExecCall ["life_fnc_broadcast",(owner _unit)];
};