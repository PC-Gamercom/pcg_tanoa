#include "..\..\script_macros.hpp"
/*
	File: fn_jail.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the initial process of jailing.
*/
params [
	["_unit",objNull,[objNull]],
	["_bad",false,[false]]
];

if(isNull _unit) exitWith {}; //Dafuq?
if(_unit != player) exitWith {}; //Dafuq?
if(life_is_arrested) exitWith {}; //Dafuq i'm already arrested

player SVAR ["restrained",false,true];
player SVAR ["Escorting",false,true];
player SVAR ["transporting",false,true];

titleText[localize "STR_Jail_Warn","PLAIN"];
hint localize "STR_Jail_LicenseNOTF";
player setPos (getMarkerPos "jail_marker");
player setPosATL [getPosATL player select 0, getPosATL player select 1,((getPosATL player select 2) + 2.3)];

if(_bad) then {
	waitUntil {alive player};
	sleep 1;
};

//Check to make sure they goto check
player setPos (getMarkerPos "jail_marker");
player setPosATL [getPosATL player select 0, getPosATL player select 1,((getPosATL player select 2) + 2.3)];


[1] call life_fnc_removeLicenses;

{
	_amount = ITEM_VALUE(_x);
	if(_amount > 0) then {
		[false,_x,_amount] call life_fnc_handleInv;
	};
} forEach ["heroin_unprocessed","heroin_processed","cannabis","marijuana","cocaine_unprocessed","cocaine_processed","turtle_raw"];

life_is_arrested = true;
removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);
removeVest player;
removeBackpack player;
removeUniform player;
player forceAddUniform "U_IG_Guerilla2_1";
uisleep 0.2;
player setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.6,0.3,0.01,1)"];
[player,_bad] remoteExecCall ["life_fnc_jailSys",RSERV];
[5] call SOCK_fnc_updatePartial;