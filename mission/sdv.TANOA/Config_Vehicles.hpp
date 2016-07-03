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
            { "B_Quadbike_01_F", 4000, { "" }, { "", "", -1 } },
			{ "C_Offroad_01_F", 20000, { "driver" }, { "", "", -1 } },
			{ "C_Offroad_02_unarmed_F", 25000, { "driver" }, { "", "", -1 } },
            { "C_Hatchback_01_F", 35000, { "driver" }, { "", "", -1 } },
			{ "C_Hatchback_01_sport_F", 45000, { "driver" }, { "", "", -1 } },
            { "C_SUV_01_F", 75000, { "driver" }, { "", "", -1 } },
            { "C_Van_01_transport_F", 110000, { "driver" }, { "", "", -1 } }
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
            { "C_Offroad_01_F", 10000, { "" }, { "", "", -1 } },
            { "I_Truck_02_medical_F", 25000, { "" }, { "", "", -1 } },
			{ "C_Van_01_box_F", 29000, { "" }, { "", "", -1 } },
            { "O_Truck_03_medical_F", 45000, { "" }, { "", "", -1 } },
            { "B_Truck_01_medical_F", 60000, { "" }, { "", "", -1 } }
        };
    };

    class med_air_hs {
        side = "med";
        vehicles[] = {
            { "B_Heli_Light_01_F", 50000, { "mAir" }, { "", "", -1 } },
            { "O_Heli_Light_02_unarmed_F", 75000, { "mAir" }, { "", "", -1 } }
        };
    };

    class civ_truck {
        side = "civ";
        vehicles[] = {
			{ "C_Van_01_box_F", 135000, { "trucking" }, { "", "", -1 } },
			{ "C_Van_01_fuel_F", 145000, { "trucking" }, { "", "", -1 } },
			{ "C_Truck_02_transport_F", 235000, { "trucking" }, { "", "", -1 } },
			{ "C_Truck_02_fuel_F", 265000, { "trucking" }, { "", "", -1 } },
			{ "C_Truck_02_covered_F", 315000, { "trucking" }, { "", "", -1 } },
			{ "B_Truck_01_transport_F", 390000, { "trucking" }, { "", "", -1 } },
			{ "B_Truck_01_covered_F", 475000, { "trucking" }, { "", "", -1 } },
			{ "B_Truck_01_box_F", 825000, { "trucking" }, { "", "", -1 } },
            { "O_Truck_03_device_F", 1000000, { "trucking" }, { "", "", -1 } }
        };
    };

    class reb_car {
        side = "civ";
        vehicles[] = {
            { "B_Quadbike_01_F", 4000, { "" }, { "", "", -1 } },
			{ "B_LSV_01_unarmed_F", 350000, { "rebel" }, { "", "", -1 } },
            { "B_LSV_01_armed_F", 650000, { "rebel" }, { "", "", -1 } },
            { "B_MRAP_01_F", 980000, { "" }, { "rebel", "", -1 } },
            { "O_MRAP_02_F", 1250000, { "" }, { "rebel", "", -1 } },
            { "B_G_Offroad_01_armed_F", 750000, { "rebel" }, { "", "", -1 } }
        };
    };

    class cop_car {
        side = "cop";
        vehicles[] = {
            { "C_Offroad_01_F", 5000, { "" }, { "", "", -1 } },
            { "C_SUV_01_F", 2000, { "" }, { "", "", -1 } },
            { "C_Hatchback_01_sport_F", 3000, { "" }, { "life_coplevel", "SCALAR", 1 } },
            { "B_MRAP_01_F", 3000, { "" }, { "life_coplevel", "SCALAR", 2 } },
            { "B_MRAP_01_hmg_F", 75000, { "" }, { "life_coplevel", "SCALAR", 3 } }
        };
    };

    class civ_air {
        side = "civ";
        vehicles[] = {
            { "B_Heli_Light_01_F", 850000, { "pilot" }, { "", "", -1 } },
			{ "C_Heli_Light_01_civil_F", 900000, { "pilot" }, { "", "", -1 } },
            { "I_Heli_Transport_02_F", 1250000, { "pilot" }, { "", "", -1 } },
			{ "O_Heli_Light_02_unarmed_F", 1350000, { "pilot" }, { "", "", -1 } },
			{ "O_Heli_Transport_04_box_F", 1500000, { "pilot" }, { "", "", -1 } }
        };
    };

    class cop_air {
        side = "cop";
        vehicles[] = {
            { "B_Heli_Light_01_F", 7500, { "cAir" }, { "", "", -1 } },
            { "B_Heli_Transport_01_F", 20000, { "cAir" }, { "life_coplevel", "SCALAR", 3 } }
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
            { "C_Rubberboat", 5000, { "boat" }, { "", "", -1 } },
            { "C_Boat_Civil_01_F", 22000, { "boat" }, { "", "", -1 } },
            { "B_SDV_01_F", 150000, { "boat" }, { "", "", -1 } }
        };
    };
};
