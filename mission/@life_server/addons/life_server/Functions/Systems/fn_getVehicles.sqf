#include "\life_server\script_macros.hpp"
private["_pid","_side","_type","_unit","_ret","_tickTime","_queryResult","_vFuel","_vHitBody","_vHitEngine","_vHitFuel","_vHitLFWheel","_vHitRFWheel","_vHitLF2Wheel","_vHitRF2Wheel","_vHitLMWheel","_vHitRMWheel","_vHitLBWheel","_vHitRBWheel"];
//private["_pid","_side","_type","_unit","_ret","_tickTime","_queryResult"];
_pid = [_this,0,"",[""]] call BIS_fnc_param;
_side = [_this,1,sideUnknown,[west]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_unit = [_this,3,ObjNull,[ObjNull]] call BIS_fnc_param;
//Error checks
if(_pid == "" OR _side == sideUnknown OR _type == "" OR isNull _unit) exitWith {
 if(!isNull _unit) then {
 [[]] remoteExecCall ["life_fnc_impoundMenu",(owner _unit)];
 };
};
_unit = owner _unit;
_side = switch(_side) do {
 case west:{"cop"};
 case civilian: {"civ"};
 case independent: {"med"};
 default {"Error"};
};
if(_side == "Error") exitWith {
 [[]] remoteExecCall ["life_fnc_impoundMenu",(owner _unit)];
};
/**************************
 * DATENBANK 
 * ORIGINAL QUERY
 * _query = format["SELECT id, side, classname, type, pid, alive, active, plate, color, gear, fuel  FROM vehicles WHERE pid='%1' AND alive='1' AND active='0' AND impound='0' AND side='%2' AND type='%3'",_pid,_side,_type];
 **************************
*/ 
_query = format[
 "SELECT 
 id,
 side,
 classname,
 type,
 pid,
 alive,
 active,
 plate,
 color,
 fuelstand,
 HitBody,
 HitEngine,
 HitFuel,
 HitLFWheel,
 HitRFWheel,
 HitLF2Wheel,
 HitRF2Wheel,
 HitLMWheel,
 HitRMWheel,
 HitLBWheel,
 HitRBWheel
 FROM vehicles 
 WHERE pid='%1' AND alive='1' AND active='0' AND impound='0' AND side='%2' AND type='%3'",
 _pid,
 _side,
 _type
 ];
_tickTime = diag_tickTime;
_queryResult = [_query,2,true] call DB_fnc_asyncCall;
if(EXTDB_SETTING(getNumber,"DebugMode") == 1) then {
 diag_log "------------- Client Query Request -------------";
 diag_log format["QUERY: %1",_query];
 diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
 diag_log format["Result: %1",_queryResult];
 diag_log "------------------------------------------------";
};
if(typeName _queryResult == "STRING") exitWith {
 [[]] remoteExecCall ["life_fnc_impoundMenu",(owner _unit)];
};
[_queryResult] remoteExecCall ["life_fnc_impoundMenu",_unit];