	#include "..\..\script_macros.hpp"
/*
	File: fn_vAH_checkItem.sqf
	Author: Fresqo
	Description: Gets player avaiable space and checks if he can carry the new amount of items (only ammo at this stage for our cool auction house)
	Some of this code was taken from guy from a forum, i will have to find the name a credit when i get a chance.. sry
*/
private["_nitem","_storage","_item","_cargo","_array","_totalCargoSpace","_storageItems","_sitem","_mass","_totalStorageItems","_newItem","_newItemMass","_can","_amount"];
_nitem = [_this,0,"",[""]] call BIS_fnc_param;
_amount = [_this,1,0,[0]] call BIS_fnc_param;
_can = false;
_newItem = _nitem;

_newItemMass = 0;

if (isClass (configfile >> "CfgWeapons" >> _newItem)) then {

	if (isClass (configfile >> "CfgWeapons" >> _newItem >> "weaponSlotsInfo")) then {

		_newItemMass = getNumber (configfile >> "CfgWeapons" >> _newItem >> "weaponSlotsInfo" >> "mass");

	} else {

		_newItemMass = getNumber (configfile >> "CfgWeapons" >> _newItem >> "itemInfo" >> "mass")

	};

} else {

	if (isClass (configfile >> "CfgMagazines" >> _newItem)) then {

		_newItemMass = getNumber (configfile >> "CfgMagazines" >> _newItem >> "mass");

	} else {

		_newItemMass = getNumber (configfile >> "CfgVehicles" >> _newItem >> "mass");

	};

};
_newItemMass = (_newItemMass * _amount);

_storageItems = [];
_totalStorageItems = 0;
_storage = [];
_totalCargoSpace = 0;

if(backpack player != "") then {
_storage pushBack backpack player;
_storageItems = _storageItems + backPackItems player;
};

if(uniform player != "") then {
_storage pushBack uniform player;
_storageItems = _storageItems + uniformItems player;
};
if(vest player != "") then {
_storage pushBack vest player;
_storageItems = _storageItems + vestItems player;
};

if(count _storage != 0) then {

{
_item = _x;

_cargo = 0;

_array = [];

if (isClass (configFile >> "CfgVehicles" >> _item)) then {

	_cargo = getNumber (configFile >> "cfgVehicles" >> _item >> "maximumLoad");

} else {

	_array = toArray getText (configFile >> "CfgWeapons" >> _item >> "iteminfo" >> "containerClass");

	for "_i" from 6 to (count _array -1) do {

		_cargo=_cargo+10^(count _array - 1 - _i)*((_array select _i)-48)

	};

};
_totalCargoSpace = _totalCargoSpace + _cargo;
} forEach _storage;};


if (count _storageItems != 0) then {
{
_sitem = _x;

_mass = 0;

if (isClass (configfile >> "CfgWeapons" >> _sitem)) then {

	if (isClass (configfile >> "CfgWeapons" >> _sitem >> "weaponSlotsInfo")) then {

		_mass = getNumber (configfile >> "CfgWeapons" >> _sitem >> "weaponSlotsInfo" >> "mass");

	} else {

		_mass = getNumber (configfile >> "CfgWeapons" >> _sitem >> "itemInfo" >> "mass")

	};

} else {

	if (isClass (configfile >> "CfgMagazines" >> _sitem)) then {

		_mass = getNumber (configfile >> "CfgMagazines" >> _sitem >> "mass");

	} else {

		_mass = getNumber (configfile >> "CfgVehicles" >> _sitem >> "mass");

	};

};
_totalStorageItems = _totalStorageItems + _mass;
} forEach _storageItems};

_totalCargoSpace = _totalCargoSpace - _totalStorageItems;

_totalCargoSpace = _totalCargoSpace - _newItemMass;
if(_totalCargoSpace > _newItemMass) then {_can = true};
_can;
