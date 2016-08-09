#include "..\..\script_macros.hpp"
/*
 File: fn_craft_update.sqf
 Description: Crafting System
 Created by EdgeKiller
 Coder: EdgeKiller
*/
private["_dialog","_inv","_mats","_item","_struct","_str","_invSize","_matsNeed","_matsNum","_config","_itemFilter"]; //Declare all private variables
disableSerialization; //Disable Serialization
_dialog = findDisplay 666; //find the craft dialog/window
_inv = _dialog displayCtrl 669; //find the listbox of items can be created
_mats = _dialog displayCtrl 672;
_struct = "";
if ((lbCurSel 669) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[669,(lbCurSel 669)];
_itemFilter = lbData[673,(lbCurSel 673)];
_config = [_itemFilter] call life_fnc_craftCfg;
{
 if (_item == _x select 0) then {
 _matsNeed = _x select 1;
 _invSize = count _matsNeed;
 for [{_i = 0},{_i < _invSize - 1},{_i = _i + 2}] do {
 _str = M_CONFIG(getText,"VirtualItems",(_matsNeed select _i),"displayName");
 _matsNum = _matsNeed select _i+1;
 _struct = _struct + format["%1x %2<br/>",_matsNum,(localize _str)];
 };
 };
} foreach (_config);
if (_struct == "") then {
 _struct = "Es wird nichts benötigt";
};
_mats ctrlSetStructuredText parseText format["
<t size='0.8px'>
%1
</t>
",_struct];