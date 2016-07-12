/*
	File: fuel_air.sqf
	Author: Paradox
	
	Description: Luft
*/
private ["_vehicle_air"];
//Apache 
if (_vehicle_air iskindof "B_Heli_Attack_01_F") then {
_vehicle_air setFuel ( Fuel _vehicle_air - 0.006);};

//Ghosthawk 
if (_vehicle_air iskindof "B_Heli_Transport_01_F") then {
_vehicle_air setFuel ( Fuel _vehicle_air - 0.006);};

//Ghosthawk camo
if (_vehicle_air iskindof "B_Heli_Transport_01_camo_F") then {
_vehicle_air setFuel ( Fuel _vehicle_air - 0.006);};

//Orca light armed
if (_vehicle_air iskindof "O_Heli_Light_02_F") then {
_vehicle_air setFuel ( Fuel _vehicle_air - 0.003);};

//orca unamred
if (_vehicle_air iskindof "O_Heli_Light_02_unarmed_F") then {
_vehicle_air setFuel ( Fuel _vehicle_air - 0.003);};

//Kajman
if (_vehicle_air iskindof "O_Heli_Attack_02_F") then {
_vehicle_air setFuel ( Fuel _vehicle_air - 0.007);};

//Kajman black
if (_vehicle_air iskindof "O_Heli_Attack_02_black_F") then {
_vehicle_air setFuel ( Fuel _vehicle_air - 0.006);};


//Mohawk
if (_vehicle_air iskindof "I_Heli_Transport_02_F") then {
_vehicle_air setFuel ( Fuel _vehicle_air - 0.005);};


//Hellcat
if (_vehicle_air iskindof "I_Heli_light_03_F") then {
_vehicle_air setFuel ( Fuel _vehicle_air - 0.006);};


//hellcat unamred
if (_vehicle_air iskindof "I_Heli_light_03_unarmed_F") then {
_vehicle_air setFuel ( Fuel _vehicle_air - 0.006);};


//Hamminbird
if (_vehicle_air iskindof "B_Heli_Light_01_F") then {
_vehicle_air setFuel ( Fuel _vehicle_air - 0.005);};

sleep 5;

call life_fnc_fuelCheck;








