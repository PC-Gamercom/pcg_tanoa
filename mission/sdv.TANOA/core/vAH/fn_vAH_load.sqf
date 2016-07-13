	#include "..\..\script_macros.hpp"
/*
	File: fn_vAH_load.sqf
	Description: Loads the Auction house items for display
	Author: Fresqo
	Not very good with GUI's so used one of Ryans basic layout and edited it, shots bro!.
*/
waitUntil {createDialog "AH_buy";};
disableSerialization;
private["_dialog","_myListbox","_curOffer","_id","_type","_amount","_item","_pic","_itemName","_price","_seller","_sellerName","_status","_time","_search","_allAH","_found"];
_search = [_this,0,"",[""]] call BIS_fnc_param;
	_dialog = findDisplay 15100;
	_myListbox = _dialog displayCtrl 15101;
	_allAH = all_ah_items;

	if(_search != "") then {
	_allAH = [];
	{_found = _x select 3 select 1 find _search; if (_found != -1) then {_allAH pushBack _x};} forEach all_ah_items;
	};
if (count all_ah_items == 0) then {
		_myListbox lbAdd format ["There are no items on the Auction House at the moment"];
		_myListbox lbSetData [(lbSize _myListbox)-1,format ["%1",["none"]]];
	} else {
{
	_curOffer = _x;
	_id = _curOffer select 0;
	_type = _curOffer select 1;
	_amount = _curOffer select 2;
	_item = _curOffer select 3 select 0;
	if (_type == 0) then {
		_itemName = localize ITEM_NAME(_item);
		_pic = M_CONFIG(getText,"VirtualItems",_item,"icon");
		} else {if (_type == 1) then {
		_itemName = ([_item] call life_fnc_fetchCfgDetails) select 1;
		_pic = [_item] call life_fnc_fetchCfgDetails select 2;
		};
	};
	_price = _curOffer select 4;
	_seller = _curOffer select 5;
	_sellerName = _curOffer select 6;
	_status = _curOffer select 7;
	_time = _curOffer select 8;
	_time = round (_time / 3);
	if (_status == 0)then {
	_myListbox lbAdd format ["%5 lots of %3 for $%2 by %1, expires in %4 hours",_sellerName,[_price] call life_fnc_numberText,_itemName,[_time] call life_fnc_numberText,[_amount] call life_fnc_numberText];
	_myListbox lbSetPicture [(lbSize _myListbox)-1, _pic];
	_myListbox lbSetPictureColor [(lbSize _myListbox)-1, [1, 1, 1, 1]];
	_myListbox lbSetData [(lbSize _myListbox)-1,format ["%1",[_id,_seller,_item,_price,_type,_amount,_sellerName]]];
	};
} forEach _allAH;};
hint "Successfully loaded offers";

while {true} do
{
	sleep 1;
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 1;
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 1;
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 1;
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 1;
	((findDisplay 15100) displayCtrl 15160) ctrlSetText "textures\fattony01.jpg";
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 0.1;
	((findDisplay 15100) displayCtrl 15160) ctrlSetText "textures\fattony02.jpg";
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 0.1;
	((findDisplay 15100) displayCtrl 15160) ctrlSetText "textures\fattony03.jpg";
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 0.1;
	((findDisplay 15100) displayCtrl 15160) ctrlSetText "textures\fattony04.jpg";
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 0.1;
	((findDisplay 15100) displayCtrl 15160) ctrlSetText "textures\fattony.jpg";
	if (isNull (findDisplay 15100)) exitWith {};
};
