/*
	File: initServer.sqf
	
	Description:
	Starts the initialization of the server.
*/
if(!(_this select 0)) exitWith {}; //Not server
[] call compile PreprocessFileLineNumbers "\life_server\init.sqf";

if (hasInterface) then {
 if (!isNumber (missionConfigFile >> "briefing")) exitWith {};
 if (getNumber (missionConfigFile >> "briefing") == 1) exitWith {};
 0 = [] spawn {
 waitUntil {
 if (getClientState == "BRIEFING READ") exitWith {true};
 if (!isNull findDisplay 53) exitWith {
 ctrlActivate (findDisplay 53 displayCtrl 1);
 findDisplay 53 closeDisplay 1;
 true
 };
 false
 };
 };
};