#include "..\..\script_macros.hpp"
/*
	File: fn_vAH_buy.sqf
	Description: buys the item but does some checks and another cool thing
	Author: Fresqo
	returns _id,_seller,_item,_price,_type,_amount,_sellerName
*/

disableSerialization;
private["_d","_e","_dialog","_myListbox","_selectedOffer","_id","_seller","_item","_value","_checkid","_cnt","_status","_online","_pid","_unit","_type","_amount","_diff","_uid","_caller","_handle","_tamount","_iCheck"];
_dialog = findDisplay 15100;
_myListbox = _dialog displayCtrl 15101;
if (lbCurSel _myListbox < 0) exitWith {hint "Please select an Item";};
_selectedOffer = call compile (_myListbox lbData (lbCurSel _myListbox));

if (!vAH_loaded) exitWith {hint "Auction house is busy at the moment, please try again in a short while!"};
if (count _selectedOffer == 1) exitWith {};

_id = _selectedOffer select 0;
_seller = _selectedOffer select 1;
_item = _selectedOffer select 2;
_value = _selectedOffer select 3;
_type = _selectedOffer select 4;
_amount = _selectedOffer select 5;
_sellerName = _selectedOffer select 6;
_uid = getPlayerUID player;
_caller = player;
_online = false;
_iCheck = true;

_e = missionNamespace getVariable [format["ahItem_%1",_id],false];
if (player getVariable["ahID",0] != _id && !_e) exitWith {hint "Someone may be buying or retrieving this item as we speak!";};

if (_seller == _uid) exitWith {hint "You cannot purchase your own item idiot!";};

{_checkid = _x select 0;if (_checkid == _id) then {_status = _x select 7};}forEach all_ah_items;
if (_status != 0) exitWith {hint "This item has already been sold or expired!";}; //NOT FOR SALE ANYMORE
if (BANK < _value) exitWith {hint "You don't have enough cash in your bank account!";};

if (_type == 0) then
	{
		_diff = [_item,_amount,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
		if(_diff < _amount) then {_iCheck = false;};
	} else
		{
		if (_type == 1)then
			{ if (_amount > 1) then
				{
					_iCheck = [_item,_amount] call life_fnc_vAH_checkItem;
				};
			};
		};

if(!_iCheck) exitWith {hint localize "STR_NOTF_InvFull";};
BANK = BANK - _value;

switch (_type) do {
	case 0: {[true,_item,_diff] call life_fnc_handleInv;};
	case 1: {
	_tamount = _amount + 1;
			for [{_i=0}, {_i<_tamount}, {_i=_i+1}] do
		{
			[_item,true] call life_fnc_handleItem;
		};
	};
};

{if(getPlayerUID _x == _seller) then {_online = true; _unit = _x};} foreach allPlayers;

if (_online) then {
	[[1,_id],"TON_fnc_vAH_update",false,false] spawn life_fnc_MP;
	[[0,[_item,_value,name _unit]],"life_fnc_vAH_reciever",_caller,false] spawn life_fnc_MP;
	[[1,[_caller,_value]],"life_fnc_vAH_reciever",_unit,false] spawn life_fnc_MP;
} else {
	[[3,_id,_value,_seller],"TON_fnc_vAH_update",false,false] spawn life_fnc_MP;
	[[0,[_item,_value,_sellerName]],"life_fnc_vAH_reciever",_caller,false] spawn life_fnc_MP;
};
closeDialog 0;

[1] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;
