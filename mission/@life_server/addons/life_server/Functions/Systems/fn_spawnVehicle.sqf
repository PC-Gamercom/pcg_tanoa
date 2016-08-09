#include "\life_server\script_macros.hpp"
private["_vid","_sp","_pid","_query","_sql","_vehicle","_nearVehicles","_name","_side","_tickTime","_dir","_servIndex","_vFuel","_vHitBody","_vHitEngine","_vHitFuel","_vHitLFWheel","_vHitRFWheel","_vHitLF2Wheel","_vHitRF2Wheel","_vHitLMWheel","_vHitRMWheel","_vHitLBWheel","_vHitRBWheel"];
_vid = [_this,0,-1,[0]] call BIS_fnc_param;
_pid = [_this,1,"",[""]] call BIS_fnc_param;
_sp = [_this,2,[],[[],""]] call BIS_fnc_param;
_unit = [_this,3,ObjNull,[ObjNull]] call BIS_fnc_param;
_price = [_this,4,0,[0]] call BIS_fnc_param;
_dir = [_this,5,0,[0]] call BIS_fnc_param;
_unit_return = _unit;
_name = name _unit;
_side = side _unit;
_unit = owner _unit;
if(EQUAL(_vid,-1) OR EQUAL(_pid,"")) exitWith {};
if(_vid in serv_sv_use) exitWith {};
serv_sv_use pushBack _vid;
_servIndex = serv_sv_use find _vid;
/*
 **************************
 * ORIGINAL QUERY
 * _query = format["SELECT id, side, classname, type, pid, alive,
 active, plate, color, inventory, gear, fuel,
 impound FROM vehicles WHERE id='%1' AND pid='%2'",_vid,_pid];
 **************************
*/

_query = format["SELECT id, side, classname, type, pid, alive, active, plate, color,inventory, gear, fuelstand, HitBody, HitEngine, HitFuel, HitLFWheel,HitRFWheel, HitLF2Wheel, HitRF2Wheel, HitLMWheel, HitRMWheel,HitLBWheel,HitRBWheel FROM vehicles WHERE id='%1' AND pid='%2'",_vid,_pid];


_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;
if(EXTDB_SETTING(getNumber,"DebugMode") == 1) then {
 diag_log "------------- Client Query Request -------------";
 diag_log format["QUERY: %1",_query];
 diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
 diag_log format["Result: %1",_queryResult];
 diag_log "------------------------------------------------";
};
if(EQUAL(typeName _queryResult,typeName "")) exitWith {};
_vInfo = _queryResult;
if(isNil "_vInfo") exitWith {serv_sv_use deleteAt _servIndex;};
if(EQUAL(count _vInfo,0)) exitWith {serv_sv_use deleteAt _servIndex;};
if(EQUAL(SEL(_vInfo,5),0)) exitWith {
 serv_sv_use deleteAt _servIndex;
 [1,format[(localize "STR_Garage_SQLError_Destroyed"),_vInfo select 2]] remoteExecCall ["life_fnc_broadcast",_unit];
};
if(EQUAL(SEL(_vInfo,6),1)) exitWith {
 serv_sv_use deleteAt _servIndex;
 [1,format[(localize "STR_Garage_SQLError_Active"),_vInfo select 2]] remoteExecCall ["life_fnc_broadcast",_unit];
};
if!(EQUAL(typeName _sp,typeName "")) then {
 _nearVehicles = nearestObjects[_sp,["Car","Air","Ship"],10];
} else {
 _nearVehicles = [];
};
if(count _nearVehicles > 0) exitWith {
 serv_sv_use deleteAt _servIndex;
 [_price,_unit_return] remoteExecCall ["life_fnc_garageRefund",_unit];
 [1,(localize "STR_Garage_SpawnPointError")] remoteExecCall ["life_fnc_broadcast",_unit];
};
_query = format["UPDATE vehicles SET active='1' WHERE pid='%1' AND id='%2'",_pid,_vid];
_trunk = [_vInfo select 9] call DB_fnc_mresToArray;
_gear = [_vInfo select 10] call DB_fnc_mresToArray;
[_query,false] spawn DB_fnc_asyncCall;
if(typeName _sp == "STRING") then {
 _vehicle = createVehicle[(_vInfo select 2),[0,0,999],[],0,"NONE"];
 waitUntil {!isNil "_vehicle" && {!isNull _vehicle}};
 _vehicle allowDamage false;
 _hs = nearestObjects[getMarkerPos _sp,["Land_Hospital_side2_F"],50] select 0;
 _vehicle setPosATL (_hs modelToWorld [-0.4,-4,12.65]);
 sleep 0.6;
} else {
 _vehicle = createVehicle [(_vInfo select 2),_sp,[],0,"NONE"];
 waitUntil {!isNil "_vehicle" && {!isNull _vehicle}};
 _vehicle allowDamage false;
 _vehicle setPos _sp;
 _vehicle setVectorUp (surfaceNormal _sp);
 _vehicle setDir _dir;
};
_vehicle allowDamage true;
/*
 **************************
 * TANK FÜLLUNG
 **************************
*/
_vehicle setFuel (_vInfo select 11);
/*
 **************************
 * DAMAGE ZUWEISUNG
 **************************
*/
_vHitBody = (_vInfo select 12); 
_vHitEngine = (_vInfo select 13);
_vHitFuel = (_vInfo select 14);
_vHitLFWheel = (_vInfo select 15);
_vHitRFWheel = (_vInfo select 16);
_vHitLF2Wheel = (_vInfo select 17);
_vHitRF2Wheel = (_vInfo select 18);
_vHitLMWheel = (_vInfo select 19);
_vHitRMWheel = (_vInfo select 20);
_vHitLBWheel = (_vInfo select 21);
_vHitRBWheel = (_vInfo select 22);
/*
 ***********************************
 * DAMAGE ZUWEISUNG 
 * NUR BEI FAHRZEUGEN
 * FLUGZEUGE / BOOTE / HUBSCHRAUBER
 * SIND NICHT INBEGRIFFEN!!
 * DEREN DAMAGEPOINTS SIND ANDERS!
 ***********************************
*/
if (_vehicle isKindOf "LandVehicle") then
{
 _vehicle setHitPointDamage ["HitBody",_vHitBody];
 _vehicle setHitPointDamage ["HitEngine",_vHitEngine];
 _vehicle setHitPointDamage ["HitFuel",_vHitFuel];
 _vehicle setHitPointDamage ["HitLFWheel",_vHitLFWheel];
 _vehicle setHitPointDamage ["HitRFWheel",_vHitRFWheel];
 _vehicle setHitPointDamage ["HitLF2Wheel",_vHitLF2Wheel];
 _vehicle setHitPointDamage ["HitRF2Wheel",_vHitRF2Wheel];
 _vehicle setHitPointDamage ["HitLMWheel",_vHitLMWheel];
 _vehicle setHitPointDamage ["HitRMWheel",_vHitRMWheel];
 _vehicle setHitPointDamage ["HitLBWheel",_vHitLBWheel];
 _vehicle setHitPointDamage ["HitRBWheel",_vHitRBWheel];
};


//Send keys over the network.
[_vehicle] remoteExecCall ["life_fnc_addVehicle2Chain",_unit];
[_pid,_side,_vehicle,1] call TON_fnc_keyManagement;
_vehicle lock 2;
//Reskin the vehicle
[_vehicle,_vInfo select 8] remoteExecCall ["life_fnc_colorVehicle",_unit];
_vehicle setVariable["vehicle_info_owners",[[_pid,_name]],true];
_vehicle setVariable["dbInfo",[(_vInfo select 4),_vInfo select 7]];
_vehicle setVariable["Trunk",_trunk,true];
_vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.
[_vehicle] call life_fnc_clearVehicleAmmo;
if (count _gear > 0) then {
 _items = _gear select 0;
 _mags = _gear select 1;
 _weapons = _gear select 2;
 _backpacks = _gear select 3;
 for "_i" from 0 to ((count (_items select 0)) - 1) do {
 _vehicle addItemCargoGlobal [((_items select 0) select _i), ((_items select 1) select _i)];
 };
 for "_i" from 0 to ((count (_mags select 0)) - 1) do {
 _vehicle addMagazineCargoGlobal [((_mags select 0) select _i), ((_mags select 1) select _i)];
 };
 for "_i" from 0 to ((count (_weapons select 0)) - 1) do {
 _vehicle addWeaponCargoGlobal [((_weapons select 0) select _i), ((_weapons select 1) select _i)];
 };
 for "_i" from 0 to ((count (_backpacks select 0)) - 1) do {
 _vehicle addBackpackCargoGlobal [((_backpacks select 0) select _i), ((_backpacks select 1) select _i)];
 };
};
//Sets of animations
if(EQUAL(SEL(_vInfo,1),"civ") && EQUAL(SEL(_vInfo,2),"B_Heli_Light_01_F") && !(EQUAL(SEL(_vInfo,8),13))) then {
 [_vehicle,"civ_littlebird",true] remoteExecCall ["life_fnc_vehicleAnimate",_unit];
};
if(EQUAL(SEL(_vInfo,1),"cop") && (SEL(_vInfo,2)) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F","C_Hatchback_01_sport_F","B_Heli_Light_01_F","B_Heli_Transport_01_F"]) then {
 [_vehicle,"cop_offroad",true] remoteExecCall ["life_fnc_vehicleAnimate",_unit];
};
if(EQUAL(SEL(_vInfo,1),"med") && EQUAL(SEL(_vInfo,2),"C_Offroad_01_F")) then {
 [_vehicle,"med_offroad",true] remoteExecCall ["life_fnc_vehicleAnimate",_unit];
};
[1,"Your vehicle is ready!"] remoteExecCall ["life_fnc_broadcast",_unit];
serv_sv_use deleteAt _servIndex;