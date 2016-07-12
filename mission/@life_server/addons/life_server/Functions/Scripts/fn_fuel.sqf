/*
	File: fuel.sqf
	Author: Paradox
	Setze den Verbrauch
*/
private ["_vehicle", "_rate", "_oldFuel", "_newFuel", "_difFuel"];

//hint "Runnging Fuel Change Script"; <- Ignorieren

while {true} do {
	//WAIT UNTIL PLAYER IS IN VEHICLE, IS DRIVER AND ENGINE IS RUNNING

	waitUntil {sleep 0.1; (vehicle player != player &&(isEngineOn vehicle player) && (driver (vehicle player)) == player)};
	
	_vehicle = vehicle player;
	_oldFuel = fuel _vehicle;
	switch(true)do
	{	

		//Zivile Autos	Tankverbrauch
		case (_vehicle iskindof "B_Quadbike_01_F"): {_rate = 0.00005;};
		case (_vehicle iskindof "C_Offroad_01_F"): {_rate = 0.00015;}; //ok
		case (_vehicle iskindof "C_SUV_01_F"): {_rate = 0.00015;}; //ok
		case (_vehicle iskindof "C_Hatchback_01_F"): {_rate = 0.00015;}; //ok
		case (_vehicle iskindof "C_Hatchback_01_sport_F"): {_rate = 0.00020;}; //ok		

		//Kleine LKW Tankverbrauch
		case (_vehicle iskindof "C_Van_01_transport_F"): {_rate = 0.00025;};
		case (_vehicle iskindof "C_Van_01_box_F"): {_rate = 0.00025;};
		case (_vehicle iskindof "C_Van_01_fuel_F"): {_rate = 0.00025;};
	
		// Zamak Tankverbrauch
		case (_vehicle iskindof "I_Truck_02_transport_F"): {_rate = 0.00035;};
		case (_vehicle iskindof "I_Truck_02_covered_F"): {_rate = 0.00035;};	
		case (_vehicle iskindof "I_Truck_02_fuel_F"): {_rate = 0.00035;};
		case (_vehicle iskindof "I_Truck_02_box_F"): {_rate = 0.00035;};
		
		// Hemtt Tankverbrauch
		case (_vehicle iskindof "B_Truck_01_transport_F"): {_rate = 0.00045;};
		case (_vehicle iskindof "B_Truck_01_covered_F"): {_rate = 0.00045;};
		case (_vehicle iskindof "B_Truck_01_mover_F"): {_rate = 0.00045;};
		case (_vehicle iskindof "B_Truck_01_box_F"): {_rate = 0.00045;};
		case (_vehicle iskindof "B_Truck_01_repair_F"): {_rate = 0.00045};
		case (_vehicle iskindof "B_Truck_01_ammo_F"): {_rate = 0.00045;};
		case (_vehicle iskindof "B_Truck_01_fuel_F"): {_rate = 0.00045;};
		case (_vehicle iskindof "B_Truck_01_medical_F"): {_rate = 0.00045;};

		// Tempest Tankverbrauch
		case (_vehicle iskindof "O_Truck_03_transport_F"): {_rate = 0.00055;};		
		case (_vehicle iskindof "O_Truck_03_covered_F"): {_rate = 0.00055;};
		case (_vehicle iskindof "O_Truck_03_fuel_F"): {_rate = 0.00055;};
		case (_vehicle iskindof "O_Truck_03_repair_F"): {_rate = 0.00055;};
		case (_vehicle iskindof "O_Truck_03_device_F"): {_rate = 0.00050;};

		//Cop Bewaffnete
		case (_vehicle iskindof "B_MRAP_01_F"): {_rate = 0.00020;};  // Hunter
		case (_vehicle iskindof "B_MRAP_02_hmg_F"): {_rate = 0.00020;};  // Hunter HMG
		case (_vehicle iskindof "O_MRAP_02_F"): {_rate = 0.00030;};  // Ifrit
		case (_vehicle iskindof "O_MRAP_02_hmg_F"): {_rate = 0.00030;};  // Ifrit HMG
		case (_vehicle iskindof "I_MRAP_03_F"): {_rate = 0.00020;};  // Strider
		case (_vehicle iskindof "B_G_Offroad_01_F"): {_rate = 0.00015;};
		
		default {diag_log format["FUEL CONSUMPTION SCRIPT: MISSING VEHICLE %1",_vehicle]; _rate = 0;};
	};





	while{true} do {
		_fuel = fuel _vehicle;
		_difFuel = _oldFuel - _fuel;
		if(vehicle player == player) exitWith {};
		if((driver (vehicle player)) != player) exitWith {};
		if(!(alive (vehicle player))) exitWith {};
		if(fuel vehicle player < 0) exitWith {};
		_rate = _rate / 1;
		
		if (_difFuel > 0) then {
			_newFuel = _fuel - (_difFuel + _rate);
			_vehicle setFuel _newFuel;
			//hint format["Old Fuel: %1 : New Fuel: %2 : Rate: %3",_oldFuel, _newFuel, _rate];
		};
		_oldFuel = fuel _vehicle;
		sleep 1;
		
	};
};








