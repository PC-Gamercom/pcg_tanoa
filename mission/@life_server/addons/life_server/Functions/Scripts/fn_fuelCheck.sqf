/*
	File: fuel_check.sqf
	Author: Paradox
	
	Description: checkt ob der Mototr an ist , bzw. ob der Spieler im Auto ist??
*/
private ["_vehicle"];

if (isDedicated) exitwith{}; //Vllt. verwundert das den ein oder anderen , aber passt!
_vehicle = vehicle player;

if ((vehicle player != player) && ( isEngineOn vehicle player) && (driver _vehicle == player)) then { 
	call life_fnc_fuel;
	sleep 10;
} else { 
	call life_fnc_fuelCheck;
	sleep 10;

};
