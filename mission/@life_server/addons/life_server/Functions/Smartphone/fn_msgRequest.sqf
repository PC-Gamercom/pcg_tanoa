/*	file: fn_msgRequest.sqf	
Author: Silex		
Fills the Messagelist
*/
private["_query","_queryResult","_uid","_player"];

_uid = [_this,0,"",[""]] call BIS_fnc_param;
_player = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_query = format["SELECT fromID, toID, message, fromName, toName FROM messages WHERE toID='%1' ORDER BY time DESC",_uid];

waitUntil{!DB_Async_Active};

_queryResult = [_query,2,true] call DB_fnc_asyncCall;
if(count _queryResult == 0) exitWith {};
	{[1,_x] remoteExec ["life_fnc_smartphone",_player];
}forEach _queryResult;