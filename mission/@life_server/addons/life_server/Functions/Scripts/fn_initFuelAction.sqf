/*
	File: init_fuel_action.sqf
	Author: Paradox
	Description: AddActions an alle 28 Tanken hinzufügen
*/
sleep 2;

fuel_stations = [];

fuel_station1 = nearestObjects[getMarkerPos "fuelshop_1", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station1;

fuel_station2 = nearestObjects[getMarkerPos "fuelshop_2", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station2;

fuel_station3 = nearestObjects[getMarkerPos "fuelshop_3", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station3;

fuel_station4 = nearestObjects[getMarkerPos "fuelshop_4", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station4;

fuel_station5 = nearestObjects[getMarkerPos "fuelshop_5", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station5;

fuel_station6 = nearestObjects[getMarkerPos "fuelshop_6", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station6;

fuel_station7 = nearestObjects[getMarkerPos "fuelshop_7", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station7;

fuel_station8 = nearestObjects[getMarkerPos "fuelshop_8", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station8;

fuel_station9 = nearestObjects[getMarkerPos "fuelshop_9", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station9;

fuel_station10 = nearestObjects[getMarkerPos "fuelshop_10", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station10;

fuel_station11 = nearestObjects[getMarkerPos "fuelshop_11", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station11;

fuel_station12 = nearestObjects[getMarkerPos "fuelshop_12", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
   _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station12;

fuel_station13 = nearestObjects[getMarkerPos "fuelshop_13", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call call life_fnc_fuelPrices"];

} foreach fuel_station13;

fuel_station14 = nearestObjects[getMarkerPos "fuelshop_14", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station14;

fuel_station15 = nearestObjects[getMarkerPos "fuelshop_15", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station15;

fuel_station16 = nearestObjects[getMarkerPos "fuelshop_16", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station16;

fuel_station17 = nearestObjects[getMarkerPos "fuelshop_17", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station17;

fuel_station18 = nearestObjects[getMarkerPos "fuelshop_18", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station18;

fuel_station19 = nearestObjects[getMarkerPos "fuelshop_19", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station19;

fuel_station20 = nearestObjects[getMarkerPos "fuelshop_20", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station20;

fuel_station21 = nearestObjects[getMarkerPos "fuelshop_21", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station21;

fuel_station22 = nearestObjects[getMarkerPos "fuelshop_22", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station22;

fuel_station23 = nearestObjects[getMarkerPos "fuelshop_23", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
	_x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station23;

fuel_station24 = nearestObjects[getMarkerPos "fuelshop_24", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
    _x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station24;

fuel_station25 = nearestObjects[getMarkerPos "fuelshop_25", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
    _x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station25;

fuel_station26 = nearestObjects[getMarkerPos "fuelshop_26", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
    _x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station26;

fuel_station27 = nearestObjects[getMarkerPos "fuelshop_27", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
    _x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station27;

fuel_station28 = nearestObjects[getMarkerPos "fuelshop_28", ["Land_fs_feed_F"], 50];

{
    fuel_stations = fuel_stations + [_x]; 
    _x setFuelCargo 0;
    
    _x addaction ["Auftanken","call life_fnc_vehicleCheck"];
    _x addaction ["BenzinPreis","call life_fnc_fuelPrices"];

} foreach fuel_station28;
