/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Initializes the civilian.
*/
private["_spawnPos"];
waitUntil {!(isNull (findDisplay 46))};
GEO_01 = nearestObjects[getMarkerPos  "GEO_01", ["Land_Shop_City_01_F","Land_Shop_City_02_F","Land_School_01_F","Land_Cathedral_01_F","Land_GuardHose_01_F","Land_Supermarket_01_F"],250];
KAT_01 = nearestObjects[getMarkerPos  "KAT_01", ["Land_Shop_City_01_F","Land_Shop_City_02_F","Land_School_01_F","Land_Cathedral_01_F","Land_GuardHose_01_F","Land_Supermarket_01_F"],250];
if(life_is_arrested) then {
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
} else {
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};
player addRating 9999999;
// IntroCam included for Civilian
//[] execVM "scripts\fn_statusBar.sqf";
[] call life_fnc_hudUpdate;
[] spawn life_fnc_IntroCam;

