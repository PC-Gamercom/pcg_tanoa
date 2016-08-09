class CarShops {
    /*
    *    ARRAY FORMAT:
    *        0: STRING (Classname)
    *        1: SCALAR (Rental Price)
    *        2: ARRAY (license required)
    *            Ex: { "driver", "trucking", "rebel" }
    *        3: ARRAY (This is for limiting items to certain things)
    *            0: Variable to read from
    *            1: Variable Value Type (SCALAR / BOOL /EQUAL)
    *            2: What to compare to (-1 = Check Disabled)
    *
    *   BLUFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST
    *   OPFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_EAST
    *   Independent Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_GUER
    *   Civilian Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_CIV
    */
    class civ_car {
        side = "civ";
        vehicles[] = {
            { "B_Quadbike_01_F", 3000, { "" }, { "", "", -1 } },
			{ "C_Offroad_01_F", 20000, { "driver" }, { "", "", -1 } },
			{ "C_Offroad_02_unarmed_F", 30000, { "driver" }, { "", "", -1 } },
            { "C_Hatchback_01_F", 10000, { "driver" }, { "", "", -1 } },
			{ "C_Hatchback_01_sport_F", 170000, { "driver" }, { "", "", -1 } },
            { "C_SUV_01_F", 80000, { "driver" }, { "", "", -1 } },
            { "C_Van_01_transport_F", 50000, { "driver" }, { "", "", -1 } }
        };
    };
	
	 class quad_car {
        side = "civ";
        vehicles[] = {
            { "B_Quadbike_01_F", 3000, { "" }, { "", "", -1 } }
        };
    };

    class kart_shop {
        side = "civ";
        vehicles[] = {
            { "C_Kart_01_Blu_F", 15000 , { "driver" }, { "", "", -1 } },
            { "C_Kart_01_Fuel_F", 15000, { "driver" }, { "", "", -1 } },
            { "C_Kart_01_Red_F", 15000, { "driver" }, { "", "", -1 } },
            { "C_Kart_01_Vrana_F", 15000, { "driver" }, { "", "", -1 } }
        };
    };

    class med_shop {
        side = "med";
        vehicles[] = {
			{ "C_Offroad_01_F", 3000, { "" }, { "life_medicLevel", "SCALAR", 1 } },
			{ "C_Van_01_box_F", 29000, { "" }, { "life_medicLevel", "SCALAR", 2 } },
			{ "B_Truck_01_mover_F", 3000, { "" }, { "life_medicLevel", "SCALAR", 3 } },
			{ "B_Truck_01_covered_F", 3000, { "" }, { "life_medicLevel", "SCALAR", 3 } },
			{ "O_Truck_02_covered_F", 3000, { "" }, { "life_medicLevel", "SCALAR", 3 } },
			{ "O_Truck_02_medical_F", 3000, { "" }, { "life_medicLevel", "SCALAR", 4 } },
			{ "B_Truck_01_medical_F", 3000, { "" }, { "life_medicLevel", "SCALAR", 4 } },
			{ "O_Truck_03_fuel_F", 3000, { "" }, { "life_medicLevel", "SCALAR", 4 } },
			{ "B_MRAP_01_hmg_F", 3000, { "" }, { "life_medicLevel", "SCALAR", 6 } },
			{ "C_SUV_01_F", 60000, { "" }, { "life_medicLevel", "SCALAR", 6 } }
        };
    };
    class med_ship_hs {
        side = "med";
        vehicles[] = {
			{ "C_Scooter_Transport_01_F", 4000, { "" }, { "life_mediclevel", "SCALAR", 1 } },
			{ "B_Lifeboat", 3000, { "" }, { "life_mediclevel", "SCALAR", 3 } }		
        };
    };
    class med_air_hs {
        side = "med";
        vehicles[] = {
			{ "C_Heli_Light_01_civil_F", 3000, { "mAir" }, { "life_mediclevel", "SCALAR", 3 } },
			{ "O_Heli_Transport_04_medevac_F", 3000, { "mAir" }, { "life_mediclevel", "SCALAR", 4 } },
			{ "O_Heli_Transport_04_F", 3000, { "mAir" }, { "life_mediclevel", "SCALAR", 4 } },
			{ "O_Heli_Light_02_unarmed_F", 3000, { "mAir" }, { "life_mediclevel", "SCALAR", 6 } },
			{ "O_T_VTOL_02_infantry_F", 3000, { "mAir" }, { "life_mediclevel", "SCALAR", 6 } }
        };
    };

    class civ_truck {
        side = "civ";
        vehicles[] = {
			{ "C_Van_01_box_F", 110000, { "trucking" }, { "", "", -1 } },
			{ "C_Van_01_fuel_F", 100000, { "trucking" }, { "", "", -1 } },
			{ "O_Truck_02_transport_F", 200000, { "trucking" }, { "", "", -1 } },
			{ "O_Truck_02_covered_F", 430000, { "trucking" }, { "", "", -1 } },
			{ "O_Truck_02_fuel_F", 430000, { "trucking" }, { "", "", -1 } },
			{ "B_Truck_01_mover_F", 110000, { "trucking" }, { "", "", -1 } },
			{ "B_Truck_01_transport_F", 800000, { "trucking" }, { "", "", -1 } },
			{ "B_Truck_01_covered_F", 1190000, { "trucking" }, { "", "", -1 } },
			{ "B_Truck_01_box_F", 3150000, { "trucking" }, { "", "", -1 } },
			{ "O_Truck_03_transport_F", 700000, { "trucking" }, { "", "", -1 } },
			{ "O_Truck_03_covered_F", 1070000, { "trucking" }, { "", "", -1 } },
            { "O_Truck_03_device_F", 4600000, { "trucking" }, { "", "", -1 } }
        };
    };

    class reb_car {
        side = "civ";
        vehicles[] = {
			{ "C_Offroad_02_unarmed_F", 60000, { "rebel" }, { "", "", -1 } },
			{ "B_T_LSV_01_unarmed_F", 220000, { "rebel" }, { "", "", -1 } },
			{ "O_T_LSV_02_unarmed_F", 220000, { "rebel" }, { "", "", -1 } },
            { "O_MRAP_02_F", 2750000, { "" }, { "rebel", "", -1 } },
			{ "B_MRAP_01_F", 2980000, { "" }, { "rebel", "", -1 } }
        };
    };
	class reb_air {
        side = "civ";
        vehicles[] = {
			{ "B_Heli_Light_01_F", 975000, { "rebel" }, { "", "", -1 } },
			{ "B_Heli_Transport_03_unarmed_F", 5100000, { "rebel" }, { "", "", -1 } },
			{ "I_Heli_light_03_unarmed_F", 4250000, { "rebel" }, { "", "", -1 } }
        };
    };

    class cop_car {
        side = "cop";
        vehicles[] = {
            { "C_Offroad_01_F", 5000, { "" }, { "", "", -1 } },
            { "C_SUV_01_F", 2000, { "" }, { "", "", -1 } },
            { "C_Hatchback_01_sport_F", 3000, { "" }, { "life_coplevel", "SCALAR", 1 } },
            { "B_MRAP_01_F", 3000, { "" }, { "life_coplevel", "SCALAR", 8 } },
            { "B_MRAP_01_hmg_F", 75000, { "" }, { "life_coplevel", "SCALAR", 8 } }
        };
    };

    class civ_air {
        side = "civ";
        vehicles[] = {
			
			{ "C_Heli_Light_01_civil_F", 560000, { "helik" }, { "", "", -1 } },
			{ "O_Heli_Light_02_unarmed_F", 1130000, { "helik" }, { "", "", -1 } },
            { "I_Heli_Transport_02_F", 2470000, { "helik" }, { "", "", -1 } },
			{ "O_Heli_Transport_04_F", 2330000, { "helik" }, { "", "", -1 } },
			{ "C_Plane_Civil_01_F", 5000000, { "pilot" }, { "", "", -1 } },
			{ "I_Plane_Fighter_03_CAS_F", 6470000, { "pilot" }, { "", "", -1 } },
			{ "B_Plane_CAS_01_F", 9870000, { "pilot" }, { "", "", -1 } },
			{ "B_T_VTOL_01_infantry_F", 6330000, { "pilot" }, { "", "", -1 } }
        };
    };

    class cop_air {
        side = "cop";
        vehicles[] = {
            { "B_Heli_Light_01_F", 7500, { "" }, { "", "", -1 } },
            { "B_Heli_Transport_01_F", 20000, { "" }, { "life_coplevel", "SCALAR", 3 } },
			{ "I_Heli_light_03_unarmed_F", 20000, { "" }, { "life_coplevel", "SCALAR", 3 } }
			
        };
    };

    class cop_ship {
        side = "cop";
        vehicles[] = {
            { "B_Boat_Transport_01_F", 3000, { "cg" }, { "", "", -1 } },
            { "C_Boat_Civil_01_police_F", 20000, { "cg" }, { "", "", -1 } },
            { "B_Boat_Armed_01_minigun_F", 75000, { "cg" }, { "life_coplevel", "SCALAR", 3 } },
            { "B_SDV_01_F", 100000, { "cg" }, { "", "", -1 } }
        };
    };

    class civ_ship {
        side = "civ";
        vehicles[] = {
			{ "C_Scooter_Transport_01_F", 5000, { "boat" }, { "", "", -1 } },
            { "B_G_Boat_Transport_01_F", 50000, { "boat" }, { "", "", -1 } },
            { "C_Boat_Civil_01_F", 1250000, { "boat" }, { "", "", -1 } },
            { "I_C_Boat_Transport_02_F", 750000, { "boat" }, { "", "", -1 } }
        };
    };
};
