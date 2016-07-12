/*
	File: fn_diesel.sqf
	Author: Paradox
	
	Description: LKW's tanken Diesel?
*/

private["_vehicle", "_controll", "_liter", "_completeliter", "_costs", "_vehicleFuelold", "_ui", "_progress", "_pgText", "_cP", "_vehicleName"];

_vehicleArray = nearestObjects[getPos player, ["Landvehicle"],5];

if(count _vehicleArray == 0) exitwith { hint "Kein Fahrzeug gefunden"};
if(count _vehicleArray > 1 ) exitwith { hint "Es wurde mehr als ein Fahrzeug im Umkreis von 5 Metern gefunden! Bitte entferne alle weiteren Fahrzeuge...";};

_vehicle = (_vehicleArray select 0);

_vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");

_controll = 0.01;
_liter = 1;
_completeliter = 1;
_cost = 0;
_vehicleFuelold = 0;
_vehicle engineOn false;

{
	_x action ["Eject", vehicle _x];
} 
forEach crew _vehicle;


//1.00 = voll = 100% annahme 65 Liter fasst Tank von Offroad währen: 1.00 / 65L = 0.0154L 

switch(true)do
{
	//Kleine Trucks Tankgeschwindigkeit
	case (_vehicle iskindof "C_Van_01_transport_F"): {_liter = 0.00900; _completeliter = 125;};
	case (_vehicle iskindof "C_Van_01_box_F"): {_liter = 0.00900; _completeliter = 135;};
	case (_vehicle iskindof "C_Van_01_fuel_F"): {_liter = 0.00900; _completeliter = 160;};
	
	//Zamak
	case (_vehicle iskindof "I_Truck_02_transport_F"): {_liter = 0.00900; _completeliter = 400;};
	case (_vehicle iskindof "I_Truck_02_covered_F"): {_liter = 0.00900; _completeliter = 400;};
	case (_vehicle iskindof "I_Truck_02_fuel_F"): {_liter = 0.00900; _completeliter = 400;};	
	case (_vehicle iskindof "I_Truck_02_box_F"): {_liter = 0.00900; _completeliter = 400;};	

	//Hemett
	case (_vehicle iskindof "B_Truck_01_transport_F"): {_liter = 0.00900; _completeliter = 450;};
	case (_vehicle iskindof "B_Truck_01_covered_F"): {_liter = 0.00900; _completeliter = 450;};
	case (_vehicle iskindof "B_Truck_01_mover_F"): {_liter = 0.00900; _completeliter = 450;};
	case (_vehicle iskindof "B_Truck_01_box_F"): {_liter = 0.00900; _completeliter = 450;};
	case (_vehicle iskindof "B_Truck_01_Repair_F"): {_liter = 0.00900; _completeliter = 450;};
	case (_vehicle iskindof "B_Truck_01_ammo_F"): {_liter = 0.00900; _completeliter = 450;};	
	case (_vehicle iskindof "B_Truck_01_fuel_F"): {_liter = 0.00900; _completeliter = 450;};
	case (_vehicle iskindof "B_Truck_01_medical_F"): {_liter = 0.00900; _completeliter = 450;};

	//Tempest
	case (_vehicle iskindof "O_Truck_03_covered_F"): {_liter = 0.00900; _completeliter = 500;};
	case (_vehicle iskindof "O_Truck_03_transport_F"): {_liter = 0.00900; _completeliter = 500;};
	case (_vehicle iskindof "O_Truck_03_covered_F"): {_liter = 0.00900; _completeliter = 500;};
	case (_vehicle iskindof "O_Truck_03_device_F"): {_liter = 0.00900; _completeliter = 500;};
	case (_vehicle iskindof "O_Truck_03_fuel_F"): {_liter = 0.00900; _completeliter = 500;};

	default {hint "Dein Fahrzeug kann nicht gefunden werden, melde das dringend einem Admin. Tanke nun Diesel mit einem Tank von 50 Litern.";_liter = 0.02; _completeliter = 50;}
};

_vehicleFuelold = fuel _vehicle;

_cost = round(((1 - _vehicleFuelold) * _completeliter) * fuel_diesel);

//Erstelle Dialog

_action = [
	format["Moechtest du dein Fahrzeug %1 voll betanken? Das Tanken kostet %2 € und wird von deinem Konto abgezogen. Sollte der Tankvorgang unterbrochen werden, wird kein Geld erstattet.",_vehicleName,[_cost] call life_fnc_numberText],
	"Betanken",
	"Ja",
	"Nein"
] call BIS_fnc_guiMessage;

if(_action) then {
	
	if(fuel _vehicle > 0.99) exitWith {hint "Dein Fahrzeug ist bereits voll betankt"; 5 cutText ["","PLAIN"];};
	if(life_atmcash < _cost) exitWith {hint format["Du hast nicht genuegend Geld auf der Bank! Du benoetigst %1",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"];};
	life_atmcash = life_atmcash - _cost;
	
	//Starte Fortschrittsbalken
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["Betanke %2 (%3%1)...","%",_vehicleName,round(_vehicleFuelold * 100) ];
	_progress progressSetPosition _vehicleFuelold;
	_cP = _vehicleFuelold;
	
	while {fuel _vehicle < 0.99} do {
			
		sleep  0.5;
		_cP = (_cP + _liter) min 1;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Betanke %2 (%3%1)...","%",_vehicleName,round((fuel _vehicle) * 100 ) ];
		if(_cP >= 1) exitWith {};
		if(player distance _vehicle > 5) exitWith {hint "Du musst zum Tanken im Umkreis von 5 Metern bleiben."; 5 cutText ["","PLAIN"];};
		//hint formatText["DEBUG akt TANK: %1, CP %2, Liter %3", fuel _vehicle, _cp, _liter]; 5 cutText ["","PLAIN"];
		_vehicle setFuel ((fuel _vehicle + _liter) min 1);
		
	};
		
	if (fuel _vehicle > 0.99) then {
		5 cutText ["","PLAIN"];
		hint format ["Dein Fahrzeug %1 wurde für %2€ vollgetankt. Wir wuenschen eine gute Weiterfahrt" , _vehicleName,[_cost] call life_fnc_numberText];
		life_cash - _cost;
	};
	
	
} else {
	hint "Betankung abgebrochen";
};
