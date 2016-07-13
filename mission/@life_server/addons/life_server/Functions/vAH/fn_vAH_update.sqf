/*
	File: fn_vAH_update.sqf
	Description: Sorts all db calls for the Vendetta AH
	Author: Fresqo
	inputs.
	0-Removes a 20minute counter from item timer and Updates the DB every 20 minutes. if timer runs out then change status to
	1- deletes a field once payment has been made and player has been notified?
	2- updates db after it gets ah variables from case 0
	3- changes status to sold and awaits player to log in to get paid
	4- inserts a new item into the db
*/
private["_switch","_id","_rows","_query","_queryResult","_time","_status","_handle","_seller","_item","_items","_itemName","_playerName","_toDel"];
_switch = [_this,0,0,[0]] call BIS_fnc_param;
_id = [_this,1,0,[0]] call BIS_fnc_param;
_time = [_this,2,0,[0]] call BIS_fnc_param;
_status = [_this,3,0,[0]] call BIS_fnc_param;
_seller = [_this,4,"",[""]] call BIS_fnc_param;
_item = [_this,5,"",[""]] call BIS_fnc_param;
_itemName = [_this,6,"",[""]] call BIS_fnc_param;
_playerName = [_this,7,"",[""]] call BIS_fnc_param;

vAH_loaded = false;
publicVariable "vAH_loaded";

switch (_switch) do {
	case 0: {
		_handle = {_id = _x select 0;_time = _x select 8;_time = round(_time - 1); if (_time < 1 && _x select 7 == 0) then {_status = 1} else {_status = _x select 7}; _toDel = round(_time + 216); if (_toDel < 1) then {[1,_id] spawn TON_fnc_vAH_update} else {[2,_id,_time,_status] spawn TON_fnc_vAH_update};} forEach all_ah_items;
		waitUntil {scriptDone _handle};
		sleep 0.3;
		diag_log "------------- Auction House Times UPDATED -------------";
		[] spawn TON_fnc_vAH_init;
	};
	case 1: {
		_query = format["DELETE FROM ah WHERE id ='%1'",_id];
		[_query,1] call DB_fnc_asyncCall;
		diag_log format["Vendetta Auction House: ITEM REMOVED: %1",_query];
		[] spawn TON_fnc_vAH_init;
	};
	case 2: {
		_query = format["UPDATE ah SET time='%1', status='%2' WHERE id='%3'",_time,_status,_id];
		[_query,1] call DB_fnc_asyncCall;
	};
	case 3: {
		_query = format["UPDATE ah SET status='2' WHERE id ='%1'",_id];
		[_query,1] call DB_fnc_asyncCall;
		diag_log format["Vendetta Auction House: ITEM SOLD: %1",_query];

		[] spawn TON_fnc_vAH_init;
	};
	case 4: {
		_items = [_item,_itemName];
		_items = [_items] call DB_fnc_mresArray;
		_query = format["INSERT INTO ah (type, amount, item, price, seller, sellername, status, time) VALUES ('%1', '%2', '%3', '%4', '%5', '%6','0', '504')",_id,_time,_items,_status,_seller,_playerName];
		[_query,1] call DB_fnc_asyncCall;
		diag_log format["Vendetta Auction House: ITEM ADDED: %1",_query];
		[] spawn TON_fnc_vAH_init;
	};
};

vAH_loaded = true;
publicVariable "vAH_loaded";
