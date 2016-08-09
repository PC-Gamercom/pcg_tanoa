/*
      Created by Mokomoko
      Date: 04.08.2014
      Related Forum Post: http://www.altisliferpg.com/topic/4812-tutorial-how-to-increase-the-fuel-usage/
	  Edited by bonz, ishi
*/
private["_vehicleToFuel","_velocityOfVehicle","_fuelConsumption","_velocityUp","_fuelDisplay"];

while{true} do {
	_vehicleToFuel = (vehicle player);
	if(isEngineOn _vehicleToFuel && ((driver _vehicleToFuel) == player) || (_vehicleToFuel != player) ) then {
		_velocityUp = (velocity _vehicleToFuel select 2)*3;
		_velocityOfVehicle = sqrt(((velocity _vehicleToFuel select 0)^2)+((velocity _vehicleToFuel select 1)^2))*3.6 + _velocityUp;

		switch (typeOf (_vehicleToFuel)) do {
			//case "B_Heli_Light_01_F":{_fuelConsumption = 0;}; Hummingbird (already consumes enough)
			case "B_Heli_Light_01_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0001;}; // Hummingbird
			case "C_Heli_Light_01_civil_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0001;}; // Hummingbird
			case "O_Heli_Light_02_unarmed_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0001;}; // Orca
			case "I_Heli_light_03_unarmed_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0001;}; // Hellcat
			case "B_Heli_Transport_01_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0001;}; // Ghost Hawk
			case "I_Heli_Transport_02_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0001;}; // Mohawk
			case "B_Heli_Transport_03_unarmed_F":{_fuelConsumption = _velocityOfVehicle/330000 + 0.0001;}; // Ghosthawk
			case "B_Heli_Transport_03_F":{_fuelConsumption = _velocityOfVehicle/330000 + 0.0001;}; // Ghosthawk
			case "O_Heli_Transport_04_F":{_fuelConsumption = _velocityOfVehicle/330000 + 0.0001;}; // Taru
			case "O_Heli_Transport_04_covered_F":{_fuelConsumption = _velocityOfVehicle/330000 + 0.0001;}; // Taru
			case "O_Heli_Transport_04_box_F":{_fuelConsumption = _velocityOfVehicle/330000 + 0.0001;}; // Taru
			case "O_Heli_Transport_04_fuel_F":{_fuelConsumption = _velocityOfVehicle/330000 + 0.0001;}; // Taru
			case "O_Heli_Transport_04_bench_F":{_fuelConsumption = _velocityOfVehicle/330000 + 0.0001;}; // Taru
			case "B_Heli_Attack_01_F": {_fuelConsumption = _velocityOfVehicle/350000 + 0.0001;}; //Blackfoot
			case "O_Heli_Attack_02_black_F":{_fuelConsumption = _velocityOfVehicle/300000 + 0.0001;}; // Kajman
			case "O_APC_Wheeled_02_rcws_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0001;}; // Marid
			case "B_MRAP_01_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0004;}; // Hunter HMG
			case "O_MRAP_02_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0004;}; // Ifrit HMG
			case "I_MRAP_03_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0004;}; // Strider HMG
			case "B_MRAP_01_hmg_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0004;}; // Hunter HMG
			case "O_MRAP_02_hmg_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0004;}; // Ifrit HMG
			case "I_MRAP_03_hmg_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0004;}; // Strider HMG
			case "B_Truck_01_mover_F":{_fuelConsumption = _velocityOfVehicle/250000 + 0.0005;}; // HEMTT
			case "B_Truck_01_box_F":{_fuelConsumption = _velocityOfVehicle/250000 + 0.0005;}; // HEMTT Box
			case "B_Truck_01_fuel_F":{_fuelConsumption = _velocityOfVehicle/250000 + 0.0005;}; // HEMTT Fuel
			case "B_Truck_01_transport_F":{_fuelConsumption = _velocityOfVehicle/250000 + 0.0005;}; // HEMTT Transport
			case "B_Truck_01_covered_F":{_fuelConsumption = _velocityOfVehicle/250000 + 0.0005;}; // HEMTT Transport (Covered)
			case "I_Truck_02_transport_F":{_fuelConsumption = _velocityOfVehicle/250000 + 0.0005;}; // HEMTT Transport (Covered)
			case "O_Truck_02_covered_F":{_fuelConsumption = _velocityOfVehicle/250000 + 0.0005;}; // HEMTT Transport (Covered)
			case "I_Truck_02_fuel_F":{_fuelConsumption = _velocityOfVehicle/250000 + 0.0005;}; // HEMTT Transport (Covered)
			case "O_Truck_03_transport_F":{_fuelConsumption = _velocityOfVehicle/350000 + 0.0005;}; // Tempest Transport
			case "O_Truck_03_covered_F":{_fuelConsumption = _velocityOfVehicle/350000 + 0.0005;}; // Tempest Transport (Covered)
			case "O_Truck_03_ammo_F":{_fuelConsumption = _velocityOfVehicle/350000 + 0.0005;}; // Tempest Ammo
			case "O_Truck_03_fuel_F":{_fuelConsumption = _velocityOfVehicle/350000 + 0.0005;}; // Tempest Fuel
			case "O_Truck_03_device_F":{_fuelConsumption = _velocityOfVehicle/350000 + 0.0005;}; // Tempest (Device)
			case "C_Hatchback_01_F":{_fuelConsumption = _velocityOfVehicle/150000 + 0.0001;}; // Hatchback
			case "C_Hatchback_01_sport_F":{_fuelConsumption = _velocityOfVehicle/140000 + 0.0002;}; // Hatchback Sport
			case "C_Offroad_01_F":{_fuelConsumption = _velocityOfVehicle/150000 + 0.00009;}; // Offroad Ziv
			case "B_G_Offroad_01_F":{_fuelConsumption = _velocityOfVehicle/150000 + 0.00011;}; // Offroad Rebelle
			case "B_G_Offroad_01_armed_F":{_fuelConsumption = _velocityOfVehicle/150000 + 0.00015;}; // Offroad HMG
			case "C_Offroad_01_repair_F":{_fuelConsumption = _velocityOfVehicle/150000 + 0.000125;}; // Offroad Repair
			case "C_SUV_01_F":{_fuelConsumption = _velocityOfVehicle/150000 + 0.00015;}; // SUV
			case "B_SDV_01_F":{_fuelConsumption = _velocityOfVehicle/280000 + 0.0001;}; //SDV
            default {_fuelConsumption = _velocityOfVehicle/150000 + 0.0001;}
        };

		if(_fuelConsumption > 0.002) then {
			_fuelConsumption = 0.002;
		};
		_vehicleToFuel setFuel ((fuel _vehicleToFuel)-_fuelConsumption);
		/*if(vehicle player != player) then {
			_fuelDisplay = round(_fuelConsumption*100000/2)/10;
			hintSilent format["Benzinverbrauch: %1L/km",_fuelDisplay];
		};*/
		if(fuel _vehicleToFuel < 0.2 && fuel _vehicleToFuel > 0.18) then {
			hintSilent "Du bist auf Reserve unterwegs. Du solltest eine Tankstelle aufsuchen!";
		} else {
			if(fuel _vehicleToFuel < 0.01) then {
				hintSilent "Der Tank ist leer!";
			};
		};
	};
	uisleep 2;
};