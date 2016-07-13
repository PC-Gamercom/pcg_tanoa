/*
    File: fn_vAH_select.sqf
    Author: Fresqo
    Description: mainly to restrict duping, cant remember what it does but it works
*/
disableSerialization;
private["_control","_index","_data","_shoppe","_cnt","_id","_units"];
_control = _this select 0;
_index = _this select 1;
_data = _control lbData _index;_data = call compile format["%1",_data];
_cnt = count _data;
_units = [];

if (_cnt == 1) exitWith {};
switch (_cnt) do {
    case 5: {_id = _data select 4};
    case 7: {_id = _data select 0};
    default {_id = 0};
};

if (_id != 0) then
{
{if (_x getVariable ["ahID",0] == _id) then {_units pushBack _x};}forEach playableUnits;

    if (count _units == 0) then
    {
        player setVariable ["ahID",_id,true];
        missionNamespace setVariable [format["ahItem_%1",_id],true,true];
    }

};

waitUntil{isNull (findDisplay 15600) && isNull (findDisplay 15100) OR (player getVariable["ahID",0] != _id)};
missionNamespace setVariable [format["ahItem_%1",_id],false,true];
