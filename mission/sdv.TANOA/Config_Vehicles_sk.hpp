
class LifeCfgVehicles {
    /*
    *    Vehicle Configs (Contains textures and other stuff)
    *
    *    storageFee (Getting vehicles out of garage) format:
    *        INDEX 0: Civilian Price
    *        INDEX 1: Cop Price
    *        INDEX 2: EMS Price
    *        INDEX 3: OPFOR Price (Not implemented in vanilla but still leaving support
    *
    *    garageSell (Selling vehicles from garage) format:
    *        INDEX 0: Civilian Price
    *        INDEX 1: Cop Price
    *        INDEX 2: EMS Price
    *        INDEX 3: OPFOR Price (Not implemented in vanilla but still leaving support
    *
    *    Textures config follows { Texture Name, side, {texture(s)path}}
    *    Texture(s)path follows this format:
    *    INDEX 0: Texture Layer 0
    *    	INDEX 1: Texture Layer 1
    *    INDEX 2: Texture Layer 2
    *    etc etc etc
    */

    class Default {
        vItemSpace = -1;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 2500;
        chopShop = 1200;
        textures[] = {};
    };
	
	class C_Offroad_01_F {
        vItemSpace = 65;
        storageFee[] = { 1000, 500, 650, 1000 };
        garageSell[] = { 6500, 2500, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 6250;
        textures[] = {
            { "Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            } },
            { "Yellow", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"
            } },
            { "White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            } },
            { "Blue", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            } },
            { "Dark Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            } },
            { "Blue / White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            } },
            { "Taxi", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
			{ "Sani", "med", {
                "vehskin\offroad.paa"
            } },
            { "Police", "cop", {
                "vehskin\offroad_police_g.paa"
            } }
        };
    };
	
	  class C_Offroad_02_unarmed_F {
        vItemSpace = 150;
        storageFee[] = { 0, 0, 1500, 0 };
        garageSell[] = { 0, 0, 5000, 0 };
        impound = 3400;
        chopShop = 12500;
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        textures[] = {
			 { "Graffiti", "civ", {
                "vehskin\MB_4WD_Skins\graffiti.jpg"
            } },
			{ "Space", "civ", {
                "vehskin\MB_4WD_Skins\space.jpg"
            } },
			{ "Tanmed", "civ", {
                "vehskin\MB_4WD_Skins\tanmed.jpg"
            } },
				{ "Zombie", "civ", {
                "vehskin\MB_4WD_Skins\zombie.jpg"
            } }
		};
    };

    class I_Truck_02_medical_F {
        vItemSpace = 150;
        storageFee[] = { 0, 0, 1500, 0 };
        garageSell[] = { 0, 0, 5000, 0 };
        impound = 2500;
        chopShop = 12500;
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        textures[] = {};
    };

    class O_Truck_03_medical_F {
        vItemSpace = 200;
        storageFee[] = { 0, 0, 3000, 0 };
        garageSell[] = { 0, 0, 10000, 0 };
        impound = 2500;
        chopShop = 22500;
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        textures[] = {};
    };

    class B_Truck_01_medical_F {
        vItemSpace = 250;
        storageFee[] = { 0, 0, 6500, 0 };
        garageSell[] = { 0, 0, 25000, 0 };
        impound = 2500;
        chopShop = 30000;
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        textures[] = {};
    };

    class C_Rubberboat {
        vItemSpace = 45;
        storageFee[] = { 400, 300, 0, 0 };
        garageSell[] = { 950, 350, 0, 0 };
        impound = 2500;
        chopShop = 2500;
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        textures[] = { };
    };

    class B_Heli_Transport_01_F {
        vItemSpace = 200;
        storageFee[] = { 0, 50000, 0, 0 };
        garageSell[] = { 0, 85000, 0, 0 };
        impound = 16000;
        chopShop = 45000;
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        textures[] = {};
    };

    class B_MRAP_01_hmg_F {
        vItemSpace = 100;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 16000;
        chopShop = 100000;
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };
	

    class O_Boat_Armed_01_hmg_F {
        vItemSpace = 175;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 21000, 21000, 0, 0 };
        impound = 16000;
        chopShop = 5000;
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        textures[] = { };
    };

    class B_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        storageFee[] = { 0, 16500, 0, 0 };
        garageSell[] = { 0, 21000, 0, 0 };
        impound = 16000;
        chopShop = 5000;
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        textures[] = { };
    };

    class I_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 21000, 21000, 0, 0 };
        impound = 16000;
        chopShop = 5000;
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        textures[] = { };
    };

    class B_G_Boat_Transport_01_F {
        vItemSpace = 45;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 0, 850, 0, 0 };
        impound = 16000;
        chopShop = 5000;
		assurPrice[] = { 1000, 1000, 1000, 1000 };// Versicherungen
        textures[] = { };
    };

    class B_Boat_Transport_01_F {
        vItemSpace = 45;
        storageFee[] = { 0, 450, 0, 0 };
        garageSell[] = { 0, 850, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 5000;
        textures[] = { };
    };

    class O_Truck_03_transport_F {
        vItemSpace = 450;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 3500, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        insurance = 2500;
        chopShop = 100000;
        textures[] = { };
    };

    class O_Truck_03_device_F {
        vItemSpace = 350;
        storageFee[] = { 95000, 0, 0, 0 };
        garageSell[] = { 185000, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 25000;
        chopShop = 225000;
        textures[] = { };
    };

    class Land_CargoBox_V1_F {
        vItemSpace = 5000;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 16000;
        chopShop = 1200;
        textures[] = {};
    };

    class Box_IND_Grenades_F {
        vItemSpace = 350;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 0, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 1200;
        textures[] = {};
    };

    class B_supplyCrate_F {
        vItemSpace = 700;
        storageFee[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 0, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 1200;
        textures[] = {};
    };

    class B_G_Offroad_01_F {
        vItemSpace = 65;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 3500, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 6250;
        textures[] = { };
    };

    class B_G_Offroad_01_armed_F {
        vItemSpace = 65;
        storageFee[] = { 1500, 0, 0, 0 };
        garageSell[] = { 4000, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 100000;
        textures[] = { };
    };

    class I_G_Van_01_transport_F {
        vItemSpace = 100;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 3500, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 5000;
        textures[] = { };
    };

    class C_Boat_Civil_01_F {
        vItemSpace = 85;
        storageFee[] = { 4500, 2500, 0, 0 };
        garageSell[] = { 6800, 3500, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 11000;
        textures[] = { };
    };

    class C_Boat_Civil_01_police_F {
        vItemSpace = 85;
        storageFee[] = { 0, 3500, 0, 0 };
        garageSell[] = { 0, 4950, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 5000;
        textures[] = { };
    };

    class C_Boat_Civil_01_rescue_F {
        vItemSpace = 85;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 3500, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 5000;
        textures[] = { };
    };

    class B_Truck_01_box_F {
        vItemSpace = 1000;
        storageFee[] = { 35000, 0, 0, 0 };
        garageSell[] = { 150000, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 175000;
        textures[] = { };
    };
	
	class B_Truck_01_fuel_F {
        vItemSpace = 25;
        storageFee[] = { 35000, 0, 0, 0 };
        garageSell[] = { 150000, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 175000;
        textures[] = { };
    };

    class B_Truck_01_transport_F {
        vItemSpace = 500;
        storageFee[] = { 25650, 0, 0, 0 };
        garageSell[] = { 135000, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 127500;
        textures[] = { };
    };

    class O_MRAP_02_F {
        vItemSpace = 60;
        storageFee[] = { 45000, 0, 0, 0 };
        garageSell[] = { 65000, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 75000;
        textures[] = { };
    };

    class I_MRAP_03_F {
        vItemSpace = 58;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 3500, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 5000;
        textures[] = { };
    };

    class C_Kart_01_Blu_F {
        vItemSpace = 20;
        storageFee[] = { 1500, 0, 0, 0 };
        garageSell[] = { 3500, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 7500;
        textures[] = {};
    };

    class C_Kart_01_Fuel_F {
        vItemSpace = 20;
        storageFee[] = { 1500, 0, 0, 0 };
        garageSell[] = { 3500, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 7500;
        textures[] = {};
    };

    class C_Kart_01_Red_F {
        vItemSpace = 20;
        storageFee[] = { 1500, 0, 0, 0 };
        garageSell[] = { 3500, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 7500;
        textures[] = {};
    };

    class C_Kart_01_Vrana_F {
        vItemSpace = 20;
        storageFee[] = { 1500, 0, 0, 0 };
        garageSell[] = { 3500, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 7500;
        textures[] = {};
    };

    class C_Hatchback_01_sport_F {
        vItemSpace = 45;
        storageFee[] = { 2500, 1000, 0, 0 };
        garageSell[] = { 15000, 7500, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 15000;
        textures[] = {
            { "Red", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa"
            } },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa"
            } },
            { "Orange", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa"
            } },
            { "Black / White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa"
            } },
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa"
            } },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa"
            } },
            { "Police", "cop", {
                "vehskin\hatch_police_g.paa"
            } },
            { "Monster", "civ", {
                "vehskin\limousine_sport_monster.paa"
            } },
			  { "Monster", "cop", {
                "vehskin\limousine_sport_monster.paa"
            } },
            { "Redgul", "civ", {
                "vehskin\limousine_sport_redgull.paa"
            } },
        };
    };

    class B_Quadbike_01_F {
        vItemSpace = 20;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 950, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 1250;
        textures[] = {
            { "Brown", "cop", {
                "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"
            } },
            { "Digi Desert", "reb", {
                "\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"
            } },
            { "Black", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"
            } },
            { "Blue", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"
            } },
            { "Red", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"
            } },
            { "White", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"
            } },
            { "Digi Green", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"
            } },
            { "Hunter Camo", "civ", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            } },
            { "Rebel Camo", "reb", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            } }
        };
    };

    class I_Truck_02_covered_F {
        vItemSpace = 250;
        storageFee[] = { 14500, 0, 0, 0 };
        garageSell[] = { 62000, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 50000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class I_Truck_02_transport_F {
        vItemSpace = 250;
        storageFee[] = { 12000, 0, 0, 0 };
        garageSell[] = { 49800, 3500, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 37500;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class O_Truck_03_covered_F {
        vItemSpace = 450;
        storageFee[] = { 25000, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        garageSell[] = { 65000, 0, 0, 0 };
        impound = 16000;
        chopShop = 125000;
        textures[] = {};
    };

    class C_Hatchback_01_F {
        vItemSpace = 40;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 4500, 3500, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 4750;
        textures[] = {
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"
            } },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"
            } },
            { "Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"
            } },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"
            } },
            { "Yellow", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"
            } },
            { "White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"
            } },
            { "Grey", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"
            } },
            { "Black", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa"
            } }
        };
    };

    class C_SUV_01_F {
        vItemSpace = 50;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 15000, 7500, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
       impound = 16000;
        chopShop = 15000;
        textures[] = {
            { "Dark Red", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
            } },
            { "Silver", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
            } },
            { "Orange", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"
            } },
			{ "Taxi", "civ", {
                "vehskin\taxi_suv.jpg"
            } },
			{ "RioSuV", "civ", {
                "vehskin\suv_rio.jpg"
            } },
			{ "MineCraft", "civ", {
                "vehskin\minecraft.jpg"
            } },
			{ "BF4SUV", "civ", {
                "vehskin\bf4_suv.jpg"
            } },
            { "PolizeiNRW", "cop", {
                "textures\cop\skin_suv_nrw.paa"
            } },
			{ "PolizeiStreife", "cop", {
                "vehskin\suv_cop_g.paa"
            } },
        };
    };

    class C_Van_01_transport_F {
        vItemSpace = 100;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 25000, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 22500;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };

    class C_Van_01_box_F {
        vItemSpace = 150;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 35000, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 30000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } },
			 { "Black", "med", {
				"vehskin\rtwfront.jpg",
				"vehskin\rtwback.jpg"
            } }
        };
    };

    class B_MRAP_01_F {
        vItemSpace = 65;
        storageFee[] = { 0, 7500, 0, 0 };
        garageSell[] = { 0, 10000, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 15000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class B_Heli_Light_01_F {
        vItemSpace = 90;
        storageFee[] = { 45000, 19500, 0, 0 };
        garageSell[] = { 57000, 35000, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 125000;
        textures[] = {
            { "Police", "cop", {
                "vehskin\littlebird_cop.paa"
            } },
            { "Sheriff", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"
            } },
            { "Civ Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            } },
            { "Civ Red", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            } },
            { "Blueline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            } },
            { "Elliptical", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            } },
            { "Furious", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            } },
            { "Jeans Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            } },
            { "Speedy Redline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            } },
            { "Sunset", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            } },
            { "Vrana", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            } },
            { "Waves Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            } },
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            } },
            { "Digi Green", "reb", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            } },
            { "Sanitäter", "med", {
                "vehskin\med_hummingbird.paa"
            } }
        };
    };

    class O_Heli_Light_02_unarmed_F {
        vItemSpace = 210;
        storageFee[] = { 55000, 0, 22000, 0 };
        garageSell[] = { 72500, 0, 35000, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 375000;
        textures[] = {
            { "Black", "cop", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa"
            } },
            { "White / Blue", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"
            } },
            { "Digi Green", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"
            } },
            { "Desert Digi", "reb", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"
            } },
            { "Sanitäter", "med", {
                "vehskin\medic_orca.jpg"
            } }
        };
    };

    class I_Heli_Transport_02_F {
        vItemSpace = 375;
        storageFee[] = { 75000, 0, 0, 0 };
        garageSell[] = { 125000, 0, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 5000;
        textures[] = {
            { "Ion", "civ", {
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_ion_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_ion_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_ion_co.paa"
            } },
            { "Dahoman", "civ", {
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_dahoman_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_dahoman_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_dahoman_co.paa"
            } }
        };
    };
	
	class B_Heli_Transport_03_unarmed_F {
        vItemSpace = 1250;
        storageFee[] = { 37500, 10000, 0, 0 };
        garageSell[] = { 75000, 50000, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 75000;
        textures[] = {};
    };
	
	 class O_Heli_Transport_04_box_F {
        vItemSpace = 1750;
        storageFee[] = { 45000, 10000, 0, 0 };
        garageSell[] = { 35000, 25000, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 75000;
        textures[] = {};
    };

    class B_SDV_01_F {
        vItemSpace = 50;
        storageFee[] = { 37500, 10000, 0, 0 };
        garageSell[] = { 75000, 50000, 0, 0 };
		assurPrice[] = { 1000, 1000, 1000, 1000 };
        impound = 16000;
        chopShop = 75000;
        textures[] = {};
    };
};
