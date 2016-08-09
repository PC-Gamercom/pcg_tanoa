
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
	
	
	// Falls nichts, dann...
	
	
	class Default {
        vItemSpace = -1;
        garageSell[] = { 0, 0, 0, 0 };
        impound = 2500;
        chopShop = 1200;
        textures[] = {};
    };
	

	// PKW
	
	
	// Quadbike
	
	class B_Quadbike_01_F {
        vItemSpace = 20;
        storageFee[] = { 450, 0, 0, 450 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 720;
        chopShop = 3600;
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
	
	
	// Limo (Standard)
	
	class C_Hatchback_01_F {
        vItemSpace = 40;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 1600;
        chopShop = 8000;
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
	
	
	// Limo (Sport)
	
	class C_Hatchback_01_sport_F {
        vItemSpace = 45;
        storageFee[] = { 12500, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 20000;
        chopShop = 100000;
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
	
	
	// Offroad (Standard)
	
	class C_Offroad_01_F {
        vItemSpace = 65;
        storageFee[] = { 2500, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 4000;
        chopShop = 20000;
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
                "vehskin\medic\medic_offroad.paa"
            } },
            { "Police", "cop", {
                "vehskin\offroad_police_g.paa"
            } }
        };
    };
	
	
	// Offroad (Reperatur)
	
	class B_G_Offroad_01_repair_F {
        vItemSpace = 100;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 4000;
        chopShop = 20000;
        textures[] = {};
    };
	
	
	// Offroader (HMG)
	
	class B_G_Offroad_01_armed_F {
        vItemSpace = 60;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 0;
        chopShop = 20000;
        textures[] = { };
    };
	
	
	// SUV
	
	class C_SUV_01_F {
        vItemSpace = 50;
        storageFee[] = { 6000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
       impound = 9600;
        chopShop = 48000;
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
			{ "EL", "med", {
                "vehskin\medic\medic_suv.paa.paa"
            } },
        };
    };
	
	
	// Jeep (MB 4WD)
	
	class C_Offroad_02_unarmed_F {
        vItemSpace = 75;
        storageFee[] = { 3750, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 6000;
        chopShop = 30000;
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
	
	
	// Prowler
	
	class B_T_LSV_01_unarmed_F {
        vItemSpace = 60;
        storageFee[] = { 11000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 17600;
        chopShop = 88000;
        textures[] = {};
    };
	
	
	// Qilin
	
	class O_T_LSV_02_unarmed_F {
        vItemSpace = 60;
        storageFee[] = { 11000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 17600;
        chopShop = 88000;
        textures[] = {};
    };

	
	// Boote
	
	
	// Jetski
	
	class C_Scooter_Transport_01_F {
        vItemSpace = 50;
        storageFee[] = { 400, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 640;
        chopShop = 3200;
        textures[] = {};
    };
	
	
	// Rubberboat (Standard)
	
	
    class C_Rubberboat {
        vItemSpace = 75;
        storageFee[] = { 1550, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 3200;
        chopShop = 20000;
        textures[] = { };
    };
	
	
	// Schlauchboot (Standard)

	class B_G_Boat_Transport_01_F {
        vItemSpace = 150;
        storageFee[] = { 3750, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 6000;
        chopShop = 30000;
        textures[] = { };
    };
	
	
	// Schlauchboot (Lifeboat)
	
	class B_Lifeboat {
        vItemSpace = 150;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 6000;
        chopShop = 0;
        textures[] = { };
    };
	
	
	// Schlauchboot (Rescue)
	
	class C_Boat_Civil_01_rescue_F {
        vItemSpace = 85;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 6000;
        chopShop = 0;
        textures[] = { };
    };
	
	
	// Motorboot (Standard)
	
	class C_Boat_Civil_01_F {
        vItemSpace = 500;
        storageFee[] = { 62500, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 100000;
        chopShop = 500000;
        textures[] = { };
    };
	
	
	// RHIB (Standard)
	
	class I_C_Boat_Transport_02_F {
        vItemSpace = 300;
        storageFee[] = { 37500, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 60000;
        chopShop = 30000;
        textures[] = { };
    };
	
	
	// Schnellboot (Unbewaffnet)
	
	class B_Boat_Armed_01_minigun_F {
        vItemSpace = 100;
        storageFee[] = { 190000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 304000;
        chopShop = 1520000;
        textures[] = { };
    };
	
	
	// Schnellboot (Unbewaffnet) (Cop)
	
	class C_Boat_Civil_01_police_F {
        vItemSpace = 85;
        storageFee[] = { 0, 190000, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 304000;
        chopShop = 1520000;
        textures[] = { };
    };
	
	
	// SDV (Standard)
	
	class B_SDV_01_F {
        vItemSpace = 50;
        storageFee[] = { 140000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 224000;
        chopShop = 1120000;
        textures[] = {};
    };
	
	
	// MRAP
	
	
	// Ifrit (Unbewaffnet)
	
	class O_MRAP_02_F {
        vItemSpace = 75;
        storageFee[] = { 137500, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 220000;
        chopShop = 1100000;
        textures[] = { };
    };
	
	
	// Hunter (Unbewaffnet)
	
	class B_MRAP_01_F {
        vItemSpace = 75;
        storageFee[] = { 149000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 238400;
        chopShop = 1192000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };
	
	
	// Hunter (HMG)
	
	class B_MRAP_01_hmg_F {
        vItemSpace = 100;
        storageFee[] = { 0, 0, 20000, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 25000;
        chopShop = 0;
        textures[] = {};
    };
	
	
	// Strider (Unbewaffnet)
	
	class I_MRAP_03_F {
        vItemSpace = 75;
        storageFee[] = { 0, 145000, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 238400;
        chopShop = 1192000;
        textures[] = { };
    };
	
	
	// Gorgon (Unbewaffnet)
	
	class I_APC_Wheeled_03_cannon_F {
        vItemSpace = 1650;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 0;
        chopShop = 20000;
        textures[] = { };
    };
	
	
	// Maret (Unbewaffnet)
	
	class O_APC_Wheeled_02_rcws_F {
        vItemSpace = 1250;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 0;
        chopShop = 1000000;
        textures[] = { };
    };
	
	
	// LKWs
	
	
	// Truck (Transport)
	
	class C_Van_01_transport_F {
        vItemSpace = 100;
        storageFee[] = { 4000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 6400;
        chopShop = 32000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };
	
	
	// Truck (Boxed)
	
	class C_Van_01_box_F {
        vItemSpace = 150;
        storageFee[] = { 7900, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 12640;
        chopShop = 63200;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } },
			{ "Krankenwagen", "med", {
				"vehskin\medic\rtwfront.paa",
				"vehskin\medic\rtwback.paa"
            } },
        };
    };
	
	
	// Truck (Fuel)
	
	class C_Van_01_fuel_F {
        vItemSpace = 150;
        storageFee[] = { 7750, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 12640;
        chopShop = 62000;
        textures[] = {};
    };
	
	
	// Zamak (Transport)
	
	class O_Truck_02_transport_F {
        vItemSpace = 200;
        storageFee[] = { 15000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 24000;
        chopShop = 120000;
        textures[] = {};
    };
	
	
	// Zamak (Reperatur)
	
	class O_Truck_02_box_F {
        vItemSpace = 100;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 24000;
        chopShop = 0;
        textures[] = {};
    };
	
	
	// Zamak (Abgedeckt)
	
	class O_Truck_02_covered_F {
        vItemSpace = 300;
        storageFee[] = { 32500, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 52000;
        chopShop = 260000;
        textures[] = {};
    };
	
	// Zamak (Fuel)
	
	class O_Truck_02_fuel_F {
        vItemSpace = 300;
        storageFee[] = { 32500, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 52000;
        chopShop = 260000;
        textures[] = {};
    };
	
	
	// HEMTT (Mover)
	
	class B_Truck_01_mover_F {
        vItemSpace = 50;
        storageFee[] = { 7870, 0, 0, 0};
        garageSell[] = { 0, 0, 0, 0 };
        impound = 12600;
        chopShop = 63000;
        textures[] = {};
    };
	
	
	// HEMTT (Transport)
	
	class B_Truck_01_transport_F {
        vItemSpace = 400;
        storageFee[] = { 60000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 96000;
        chopShop = 480000;
        textures[] = { };
    };
	
	
	// HEMTT (Ammo)
	
	class B_Truck_01_ammo_F {
        vItemSpace = 50;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 0;
        chopShop = 0;
        textures[] = {};
    };
	
	
	// HEMTT (Medizin)
	
	class B_Truck_01_medical_F {
        vItemSpace = 100;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 50000;
        chopShop = 0;
        textures[] = {};
    };
	
	
	// HEMTT (Abgedeckt)
	
	class B_Truck_01_covered_F {
        vItemSpace = 500;
        storageFee[] = { 89250, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 142800;
        chopShop = 714000;
        textures[] = {};
    };
	
	
	// HEMTT (Fuel)
	
	class B_Truck_01_fuel_F {
        vItemSpace = 500;
        storageFee[] = { 89250, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 142800;
        chopShop = 714000;
        textures[] = { };
    };

	
	// HEMTT (Boxed)
	
	class B_Truck_01_box_F {
        vItemSpace = 1000;
        storageFee[] = { 237500, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 380000;
        chopShop = 1900000;
        textures[] = { };
    };
	
	
	// Tempest (Transport)
	
	class O_Truck_03_transport_F {
        vItemSpace = 350;
        storageFee[] = { 52500, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        insurance = 84000;
        chopShop = 420000;
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
	
	
	// Tempest (Reperatur)
	
	class O_Truck_03_repair_F {
        vItemSpace = 100;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        insurance = 40000;
        chopShop = 0;
        textures[] = { };
    };
	
	
	// Tempest (Medic)
	
	class O_Truck_03_medical_F {
        vItemSpace = 100;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 40000;
        chopShop = 0;
        textures[] = {};
    };
	
	
	// Tempest (Abgedeckt)
	
	class O_Truck_03_covered_F {
        vItemSpace = 480;
        storageFee[] = { 80000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 128000;
        chopShop = 620000;
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
	
	
	// Tempest (Gerät)
	
	class O_Truck_03_device_F {
        vItemSpace = 750;
        storageFee[] = { 345000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 552000;
        chopShop = 2760000;
        textures[] = { };
    };
	
	
	// Helikopter
	
	
	// M-900 (Zivil)
	
	class C_Heli_Light_01_civil_F {
        vItemSpace = 75;
        storageFee[] = { 42000, 0, 0, 0};
        garageSell[] = { 0, 0, 0, 0 };
        impound = 67200;
        chopShop = 336000;
        textures[] = {};
    };
	
	
	// M-9 (Hummingbird)
	
	class B_Heli_Light_01_F {
        vItemSpace = 75;
        storageFee[] = { 48750, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 78000;
        chopShop = 390000;
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
                "vehskin\medic\med_hummingbird.paa"
            } }
        };
    };
	
	
	// Orca (Unbewaffnet)
	
	class O_Heli_Light_02_unarmed_F {
        vItemSpace = 200;
        storageFee[] = { 85000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 136000;
        chopShop = 680000;
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
	
	
	// Mohawk (Standard)
	
	class I_Heli_Transport_02_F {
        vItemSpace = 375;
        storageFee[] = { 185000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 296000;
        chopShop = 1480000;
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

	
	// Huron (Standard)
	
	class B_Heli_Transport_03_unarmed_F {
        vItemSpace = 500;
        storageFee[] = { 255000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 408000;
        chopShop = 2040000;
        textures[] = {};
    };
	
	
	// Taru (Mover)
	
	class O_Heli_Transport_04_F {
        vItemSpace = 0;
        storageFee[] = { 175000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 280000;
        chopShop = 1400000;
        textures[] = {};
    };
	
	
	// Taru-Box (Bank)
	
	class O_Heli_Transport_04_bench_F {
        vItemSpace = 50;
        storageFee[] = { 37500, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 60000;
        chopShop = 300000;
        textures[] = {};
    };
	
	
	// Taru-Box (Fuel)
	
	class O_Heli_Transport_04_fuel_F {
        vItemSpace = 450;
        storageFee[] = { 125000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 200000;
        chopShop = 1000000;
        textures[] = {};
    };
	
	
	// Taru-Box (Fracht)
	
	class O_Heli_Transport_04_covered_F {
        vItemSpace = 450;
        storageFee[] = { 125000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 200000;
        chopShop = 1000000;
        textures[] = {};
    };
	
	
	// Taru-Box (Medic)
	
	class O_Heli_Transport_04_medevac_F {
        vItemSpace = 100;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 75000;
        chopShop = 0;
        textures[] = {};
    };
	
	
	// Taru-Box (Reperatur)
	
	class O_Heli_Transport_04_repair_F {
        vItemSpace = 100;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 75000;
        chopShop = 0;
        textures[] = {};
    };
	
	
	// Taru-Box (Ammo)
	
	class O_Heli_Transport_04_ammo_F {
        vItemSpace = 50;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 0;
        chopShop = 0;
        textures[] = {};
    };
	
	
	// Hellcat (Unbewaffnet)
	
	class I_Heli_light_03_unarmed_F {
        vItemSpace = 100;
        storageFee[] = { 212500, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 340000;
        chopShop = 1700000;
        textures[] = {};
    };
	
	
	// Kajman (Unbewaffnet)
	
	class O_Heli_Attack_02_F {
        vItemSpace = 100;
        storageFee[] = { 500000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 800000;
        chopShop = 4000000;
        textures[] = {};
    };
	
	
	// Ghosthawk (Unbewaffnet)
	
	class B_Heli_Transport_01_F {
        vItemSpace = 100;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 340000;
        chopShop = 1700000;
        textures[] = {};
    };
	
	
	// Blackfoot (Bewaffnet)
	
	class B_Heli_Attack_01_F {
        vItemSpace = 100;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 800000;
        chopShop = 4000000;
        textures[] = {};
    };
	
	
	// Flugzeuge
	
	
	// Cesna (Zivil)
	
	class C_Plane_Civil_01_F {
        vItemSpace = 1000;
        storageFee[] = { 187500, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 300000;
        chopShop = 3000000;
        textures[] = {};
    };
	
	
	// Buzzard (Unbewaffnet)
	
	class I_Plane_Fighter_03_CAS_F {
        vItemSpace = 1500;
        storageFee[] = { 242500, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 388000;
        chopShop = 3880000;
        textures[] = {};
    };
	
	
	// Wipe-Out (Unbwaffnet)
	
	class B_Plane_CAS_01_F {
        vItemSpace = 2000;
        storageFee[] = { 370000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 592000;
        chopShop = 5920000;
        textures[] = {};
    };
	
	
	// Neophron (Unbewaffnet)
	
	class O_Plane_CAS_02_F {
        vItemSpace = 3000;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 0;
        chopShop = 0;
        textures[] = {};
    };
	
	
	// Black-Fish (Unbewaffnet)
	
	class B_T_VTOL_01_infantry_F {
        vItemSpace = 750;
        storageFee[] = { 0, 0, 0, 0 };
        garageSell[] = { 316000, 316000, 316000, 316000 };
        impound = 380000;
        chopShop = 3800000;
        textures[] = {};
    };
	
	
	// Xian (Unbewaffnet)
	
	class O_T_VTOL_02_infantry_F {
        vItemSpace = 850;
        storageFee[] = { 316000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 410000;
        chopShop = 3800000;
        textures[] = {};
    };
	
	
	// Kart
	
	class C_Kart_01_Blu_F {
        vItemSpace = 20;
        storageFee[] = { 150000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 200000;
        chopShop = 7500;
        textures[] = {};
    };

    class C_Kart_01_Fuel_F {
        vItemSpace = 20;
        storageFee[] = { 150000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 200000;
        chopShop = 7500;
        textures[] = {};
    };

    class C_Kart_01_Red_F {
        vItemSpace = 20;
        storageFee[] = { 150000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 200000;
        chopShop = 7500;
        textures[] = {};
    };

    class C_Kart_01_Vrana_F {
        vItemSpace = 20;
        storageFee[] = { 150000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 200000;
        chopShop = 7500;
        textures[] = {};
    };
	
	
	// Fahrzeug-Erweiterungen
	
	
	class Land_CargoBox_V1_F {
        vItemSpace = 5000;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 0;
        chopShop = 1200;
        textures[] = {};
    };

    class Box_IND_Grenades_F {
        vItemSpace = 350;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 0;
        chopShop = 1200;
        textures[] = {};
    };

    class B_supplyCrate_F {
        vItemSpace = 700;
        storageFee[] = { 1000, 0, 0, 0 };
        garageSell[] = { 0, 0, 0, 0 };
        impound = 0;
        chopShop = 1200;
        textures[] = {};
    };
	
	
	// Rest???
	
};