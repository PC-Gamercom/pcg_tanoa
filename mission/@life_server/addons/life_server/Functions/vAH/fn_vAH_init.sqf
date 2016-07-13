/*
	File: fn_vAH_init.sqf
	Description: Initialized the new Auction house/shop
	Author: Fresqo
*/

private["_query","_queryResult","_rows","_new","_count","_countResult","_rowPart","_amount"];
vAH_loaded = false;
publicVariable "vAH_loaded";
_count = format["SELECT count(*) FROM ah"];
_countResult = [_count,2] call DB_fnc_asyncCall;
_amount = _countResult select 0;
_rows = [];

diag_log "------------- Vendetta Auction House Initialization -------------";
while {_amount > 80} do {
	_query = format["SELECT id, type, amount, item, price, seller, sellername, status, time FROM ah LIMIT 80 OFFSET %1",(_amount-81)];
	_queryResult = [_query,2,true] call DB_fnc_asyncCall;
	_rowPart = call compile format["%1",_queryResult];
	//Parse item
	{
		_new = [(_x select 3)] call DB_fnc_mresToArray;
		if(typeName _new == "STRING") then {
			_new = call compile format["%1", _new];
		};
		_x set[3,_new];
		_rows pushBack _x;
	} forEach _rowPart;
	diag_log format["Query: %1",_query];
	_amount = _amount-80;
};
_query = format["SELECT id, type, amount, item, price, seller, sellername, status, time FROM ah LIMIT %1",_amount];
_queryResult = [_query,2,true] call DB_fnc_asyncCall;
_rowPart = call compile format["%1",_queryResult];
//Parse item
{
	_new = [(_x select 3)] call DB_fnc_mresToArray;
	if(typeName _new == "STRING") then {
	_new = call compile format["%1", _new];
	};
	_x set[3,_new];
	_rows pushBack _x;
} forEach _rowPart;
diag_log format["Query: %1",_query];

diag_log format["Result: %1",_rows];
diag_log "--------------------------------------------";

all_ah_items = _rows;
publicVariable "all_ah_items";
vAH_loaded = true;
publicVariable "vAH_loaded";
