/*
	File: vehicle_check.sqf
	Author: Paradox
	
	Description: Checkt die Fahrzeuge und deren Krafstoffe
*/
private ["_vehicle"];
_vehicle = nearestObjects[getPos player, ["Landvehicle"],5];

if(count _vehicle == 0) exitwith { hint "Kein Fahrzeug gefunden"};
if(count _vehicle > 1 ) exitwith { hint "Es wurde mehr als ein Fahrzeug gefunden! Bitte entferne das zweite...";};
if ((_vehicle select 0) iskindof "Air") exitwith { hint "Ein Hubschrauber kann nicht an einer normalen Tankstelle betankt werden"};

switch(true)do
{
	case ((_vehicle select 0) iskindof "C_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_SUV_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Hatchback_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Hatchback_01_sport_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "C_Van_01_transport_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "C_Van_01_box_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "C_Van_01_fuel_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "B_Truck_01_transport_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "B_Truck_01_covered_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "B_Truck_01_mover_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "B_Truck_01_box_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "B_Truck_01_Repair_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "B_Truck_01_ammo_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "B_Truck_01_fuel_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "B_Truck_01_medical_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "B_MRAP_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "B_MRAP_02_hmg_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "I_Truck_02_transport_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "I_Truck_02_covered_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "B_G_Offroad_01_armed_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "B_G_Offroad_01_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "I_MRAP_03_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "O_MRAP_02_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "O_MRAP_02_hmg_F"): {call life_fnc_super};
	case ((_vehicle select 0) iskindof "O_Truck_02_covered_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "O_Truck_02_transport_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "O_Truck_03_covered_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "O_Truck_03_device_F"): {call life_fnc_diesel};
	case ((_vehicle select 0) iskindof "C_Quadbike_01_F"): {call life_fnc_super};
	default {hint "Dein Fahrzeug kann nicht gefunden werden, melde das dringend einem Admin. Tanke nun Super mit einem Tank von 50 Litern."; call life_fnc_super; diag_log format["FUEL SCRIPT: MISSING VEHICLE %1",(_vehicle select 0)];}
	};

