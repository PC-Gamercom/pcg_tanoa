/*
 File: fn_impoundMenu.sqf
 Author: Bryan "Tonic" Boardwine
 
 Description:
 Lists impounded vehicles.
 DUE TO BE REWROTE IN NEW SYSTEM
*/
private["_display","_cars","_name","_pic","_color","_text","_price"];
if(!dialog) then
{
 if(!(createDialog "Life_impounded_menu")) exitWith {};
 life_impound_yard = _this select 3;
};
disableSerialization;
_display = findDisplay 28000;
if(isNull _display) exitWith {};
_cars = _display displayCtrl 28010;
lbClear _cars;
for "_i" from 0 to (count life_vehicles)-1 do
{
 _veh = life_vehicles select _i;
 if(_veh distance impound_obj < 50) then
 {
 _price = [_veh] call life_fnc_impoundPrice;
 switch (true) do
 {
 case (_veh isKindOf "Car") : {_price = _price + 100;};
 case (_veh isKindOf "Air") : {_price = _price + 650;};
 case (_veh isKindOf "Ship") : {_price = _price + 50;};
 };
 
 if(_price > life_cash) then
 {
 _price = _price + 200;
 };
 
 _name = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
 _pic = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "picture");
 _cars lbSetPicture [(lbSize _cars)-1,_pic];
 _cars lbSetData [(lbSize _cars)-1,str(_i)];
 };
};