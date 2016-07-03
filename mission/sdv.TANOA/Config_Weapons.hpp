/*
*    Format:
*        level: ARRAY (This is for limiting items to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL)
*            2: What to compare to (-1 = Check Disabled)
*            3: Custom exit message (Optional)
*
*    items: { Classname, Itemname, BuyPrice, SellPrice }
*
*    Itemname only needs to be filled if you want to rename the original object name.
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        license = "gun";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 15600, 6240 },
            { "hgun_Pistol_heavy_02_F", "", 41700, 16680 },
            { "hgun_ACPC2_F", "", 30800, 12320 },
            { "hgun_PDW2000_F", "", 42300, 16920 },
            { "optic_ACO_grn_smg", "", 2500, 250 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 250 },
            { "6Rnd_45ACP_Cylinder", "", 500 },
            { "9Rnd_45ACP_Mag", "", 450 },
            { "30Rnd_9x21_Mag", "", 750 }
        };
    };
 
    class rebel {
        name = "Delicate Jihadi Shop";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_ACPC2_F", "", 30800, 12500 },
            { "hgun_Pistol_heavy_01_F", "", 40600, 19500 },
            { "hgun_Pistol_heavy_02_F", "", 41700, 20000 },
            { "hgun_Rook40_F", "", 15900, 7300 },
            { "arifle_TRG21_F", "", 63000, 28700 },
            { "arifle_Katiba_F", "", 120000, 58000 },
            { "arifle_SDAR_F", "", 50000, 23200 },
            { "arifle_Mk20_F", "", 84500, 39700 },
            { "srifle_EBR_F", "", 275000, 130000 },
            { "srifle_GM6_F", "", 1250000, 550000 },
            { "srifle_LRR_F", "", 1000000, 450000 },
            { "srifle_DMR_01_F", "", 250000, 115000 },
            { "srifle_DMR_02_camo_F", "", 2750000, 1250000 },
            { "srifle_DMR_03_F", "", 325000, 150000 },
            { "srifle_DMR_04_F", "", 1150000, 490000 },
            { "srifle_DMR_05_tan_f", "", 600000, 280000 },
            { "srifle_DMR_06_camo_F", "", 300000, 130000 },
            { "LMG_Mk200_F", "", 450000, 215000 },
            { "LMG_Zafir_F", "", 650000, 315000 },
            { "MMG_01_hex_F", "", 3500000, 1600000 },
            { "MMG_02_camo_F", "", 3700000, 1750000 },
            { "optic_ACO_grn", "", 3500, 350 },
            { "optic_MRCO", "", 3600, 275 },
            { "optic_SOS", "", 3600, 275 },
            { "optic_DMS", "", 3600, 275 },
            { "optic_Holosight", "", 3600, 275 },
            { "optic_Hamr", "", 3600, 275 },
            { "optic_Aco", "", 3600, 275 },
            { "optic_Aco_smg", "", 3600, 275 },
            { "optic_NVS", "", 3600, 275 },
            { "optic_Nightstalker", "", 3600, 275 },
            { "optic_tws", "", 3600, 275 },
            { "optic_tws_mg", "", 3600, 275 },
            { "optic_Yorris", "", 3600, 275 },
            { "optic_MRD", "", 3600, 275 },
            { "optic_LRPS", "", 3600, 275 },
            { "optic_AMS", "", 3600, 275 },
            { "optic_KHS_blk", "", 3600, 275 },
            { "bipod_01_F_blk", "", 3600, 275 },
            { "bipod_02_F_blk", "", 3600, 275 },
            { "bipod_03_F_blk", "", 3600, 275 },
            { "muzzle_snds_H", "", 3600, 275 },
            { "muzzle_snds_L", "", 3600, 275 },
            { "muzzle_snds_M", "", 3600, 275 },
            { "muzzle_snds_B", "", 3600, 275 },
            { "muzzle_snds_H_MG", "", 3600, 275 },
            { "muzzle_snds_H_SW", "", 3600, 275 },
            { "muzzle_snds_acp", "", 3600, 275 },
            { "muzzle_snds_338_black", "", 3600, 275 },
            { "muzzle_snds_93mmg", "", 3600, 275 },
            { "acc_flashlight", "", 1000, 100 },
            { "acc_pointer_IR", "", 3600, 275 }
        };
        mags[] = {
      { "9Rnd_45ACP_Mag", "", 125 },
            { "11Rnd_45ACP_Mag", "", 125 },
            { "6Rnd_45ACP_Cylinder", "", 125 },
            { "16Rnd_9x21_Mag", "", 125 },
            { "30Rnd_9x21_Mag", "", 125 },
            { "20Rnd_556x45_UW_mag", "", 125 },
            { "30Rnd_556x45_Stanag", "", 300 },
            { "30Rnd_556x45_Stanag_Tracer_Red", "", 125 },
            { "30Rnd_65x39_caseless_green", "", 275 },
            { "200Rnd_65x39_cased_Box", "", 125 },
            { "200Rnd_65x39_cased_Box_Tracer", "", 125 },
            { "10Rnd_762x54_Mag", "", 500 },
            { "20Rnd_762x51_Mag", "", 125 },
            { "150Rnd_762x54_Box", "", 125 },
            { "150Rnd_762x54_Box_Tracer", "", 125 },
            { "10Rnd_93x64_DMR_05_Mag", "", 125 },
            { "150Rnd_93x64_Mag", "", 125 },
            { "5Rnd_127x108_Mag", "", 125 },
            { "5Rnd_127x108_APDS_Mag", "", 125 },
            { "10Rnd_127x54_Mag", "", 125 },
            { "7Rnd_408_Mag", "", 125 },
            { "10Rnd_338_Mag", "", 125 },
            { "130Rnd_338_Mag", "", 125 }
        };
    };
 
    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
          { "arifle_TRG21_F", "", 63000, 28700 },
          { "arifle_Katiba_F", "", 120000, 58000 },
          { "arifle_SDAR_F", "", 50000, 23200 },
          { "arifle_Mk20_F", "", 84500, 39700 },
          { "srifle_EBR_F", "", 275000, 130000 },
          { "optic_Hamr", "", 2500, -1 },
          { "optic_MRCO", "", 2500, -1 },
          { "optic_Aco", "", 2000, -1 },
          { "optic_Holosight", "", 2000, -1 },
          { "acc_flashlight", "", 2500, -1 },
          { "acc_pointer_IR", "", 2500, -1 }
        };
        mags[] = {
          { "9Rnd_45ACP_Mag", "", 125 },
          { "11Rnd_45ACP_Mag", "", 125 },
          { "6Rnd_45ACP_Cylinder", "", 125 },
          { "16Rnd_9x21_Mag", "", 125 },
          { "30Rnd_9x21_Mag", "", 125 },
          { "20Rnd_556x45_UW_mag", "", 125 },
          { "30Rnd_556x45_Stanag", "", 300 },
          { "30Rnd_556x45_Stanag_Tracer_Red", "", 125 },
          { "30Rnd_65x39_caseless_green", "", 275 },
          { "200Rnd_65x39_cased_Box", "", 125 },
          { "200Rnd_65x39_cased_Box_Tracer", "", 125 },
          { "10Rnd_762x54_Mag", "", 500 },
          { "20Rnd_762x51_Mag", "", 125 },
          { "150Rnd_762x54_Box", "", 125 },
          { "150Rnd_762x54_Box_Tracer", "", 125 },
          { "10Rnd_93x64_DMR_05_Mag", "", 125 },
          { "150Rnd_93x64_Mag", "", 125 },
          { "5Rnd_127x108_Mag", "", 125 },
          { "5Rnd_127x108_APDS_Mag", "", 125 },
          { "10Rnd_127x54_Mag", "", 125 },
          { "7Rnd_408_Mag", "", 125 },
          { "10Rnd_338_Mag", "", 125 },
          { "130Rnd_338_Mag", "", 125 }
        };
    };
 
    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "ItemMap", "", 50, 35 },
            { "ItemCompass", "", 50, 25 },
            { "ItemWatch", "", 50, -1 },
            { "ToolKit", "", 250, 75 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 },
            { "Chemlight_red", "", 300, -1 },
            { "Chemlight_yellow", "", 300, 50 },
            { "Chemlight_green", "", 300, 50 },
            { "Chemlight_blue", "", 300, 50 }
        };
        mags[] = {};
    };
 
    class f_station_store {
        name = "Altis Fuel Station Store";
        side = "";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 750, -1 },
            { "ItemGPS", "", 500, 45 },
            { "ItemMap", "", 250, 35 },
            { "ItemCompass", "", 250, 25 },
            { "ItemWatch", "", 250, -1 },
            { "ToolKit", "", 1250, 75 },
            { "FirstAidKit", "", 750, 65 },
            { "NVGoggles", "", 10000, 980 },
            { "Chemlight_red", "", 1500, -1 },
            { "Chemlight_yellow", "", 1500, 50 },
            { "Chemlight_green", "", 1500, 50 },
            { "Chemlight_blue", "", 1500, 50 }
        };
        mags[] = {};
    };
 
    //Cop Shops
    class cop_basic {
        name = "Altis Cop Shop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "arifle_sdar_F", "Taser Rifle", 15000, -1 },
            { "hgun_P07_snds_F", "Taser Pistol", 2000, -1 },
            { "HandGrenade_Stone", "Flashbang", 1700, -1 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, -1 },
            { "ToolKit", "", 250, -1 },
            { "muzzle_snds_L", "", 650, -1 },
            { "FirstAidKit", "", 150, -1 },
            { "Medikit", "", 1000, -1 },
            { "NVGoggles", "", 2000, -1 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "Taser Pistol Magazine", 25 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 }
        };
    };
 
    class cop_patrol {
        name = "Delicate Officer Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 2, "You must be an Officer or higher!" };
        items[] = {
            { "arifle_MXC_Black_F", "", 25000, -1 },
            { "optic_Aco", "", 750, -1 },
            { "optic_Holosight", "", 1200, -1 },
            { "acc_flashlight", "", 2500, -1 },
            { "acc_pointer_IR", "", 2500, -1 },
            { "muzzle_snds_H", "", 5000, -1 }
        };
        mags[] = {
            { "30Rnd_65x39_caseless_mag", "", 250 }
        };
    };
 
    class cop_detective {
        name = "Delicate Detective Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 3, "You must be a Detective or higher!" };
        items[] = {
            { "arifle_MX_Black_F", "", 27500, -1 },
            { "arifle_MX_SW_Black_F", "", 50000, -1 },
            { "optic_Hamr", "", 2500, -1 },
            { "optic_MRCO", "", 2500, -1 },
            { "optic_Aco", "", 2000, -1 },
            { "optic_Holosight", "", 2000, -1 },
            { "acc_flashlight", "", 2500, -1 },
            { "acc_pointer_IR", "", 2500, -1 },
            { "muzzle_snds_H", "", 5000, -1 },
            { "SmokeShell", "", 5000, -1 },
            { "HandGrenade_Stone", "Flashbang", 1700, -1 }
        };
        mags[] = {
            { "30Rnd_65x39_caseless_mag", "", 250 },
            { "100Rnd_65x39_caseless_mag", "", 750 }
        };
    };
 
    class cop_sergeant {
        name = "Delicate Sergeant Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 4, "You must be a Sergeant or higher!" };
        items[] = {
            { "arifle_MX_Black_F", "", 27500, -1 },
            { "arifle_MXM_Black_F", "", 30000, -1 },
            { "arifle_MX_SW_Black_F", "", 30000, -1 },
            { "optic_Hamr", "", 2500, -1 },
            { "optic_MRCO", "", 2500, -1 },
            { "optic_Aco", "", 2000, -1 },
            { "optic_Holosight", "", 2000, -1 },
            { "optic_DMS", "", 5000, -1 },
            { "acc_flashlight", "", 2500, -1 },
            { "acc_pointer_IR", "", 2500, -1 },
            { "muzzle_snds_H", "", 5000, -1 },
            { "bipod_01_F_blk", "", 3600, -1 },
            { "bipod_02_F_blk", "", 3600, -1 },
            { "bipod_03_F_blk", "", 3600, -1 },
            { "SmokeShell", "", 5000, -1 },
            { "SmokeShellGreen", "Teargas", 5000, -1},
            { "HandGrenade_Stone", "Flashbang", 2500, -1 }
        };
        mags[] = {
            { "30Rnd_65x39_caseless_mag", "", 250 },
            { "100Rnd_65x39_caseless_mag", "", 750 }
        };
    };
 
    class cop_patrolsupervisor {
        name = "Delicate Patrol Supervisor Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 5, "You must be a Patrol Supervisor or higher!" };
        items[] = {
            { "srifle_EBR_F", "", 35000, -1 },
            { "srifle_DMR_06_olive_F", "", 35000, -1 },
            { "srifle_DMR_03_F", "", 45000, -1 },
            { "LMG_Zafir_F", "", 45000, -1 },
            { "optic_Hamr", "", 2500, -1 },
            { "optic_MRCO", "", 2500, -1 },
            { "optic_NVS", "", 10000, -1 },
            { "optic_SOS", "", 10000, -1 },
            { "optic_KHS_old", "", 10000, -1 },
            { "optic_AMS", "", 10000, -1 },
            { "acc_flashlight", "", 2500, -1 },
            { "acc_pointer_IR", "", 2500, -1 },
            { "muzzle_snds_B", "", 5000, -1 },
            { "bipod_01_F_blk", "", 3600, -1 },
            { "bipod_02_F_blk", "", 3600, -1 },
            { "bipod_03_F_blk", "", 3600, -1 },
            { "SmokeShell", "", 5000, -1 },
            { "SmokeShellGreen", "Teargas", 5000, -1},
            { "HandGrenade_Stone", "Flashbang", 2500, -1 }
        };
        mags[] = {
            { "20Rnd_762x51_Mag", "", 500 },
            { "150Rnd_762x54_Box", "", 500 }
        };
    };
 
    class cop_inspector {
        name = "Delicate Inspector Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 6, "You must be an Inspector or higher!" };
        items[] = {
            { "srifle_GM6_F", "", 50000, -1 },
            { "srifle_LRR_F", "", 35000, -1 },
            { "srifle_DMR_02_F", "", 65000, -1 },
            { "srifle_DMR_05_blk_F", "", 60000, -1 },
            { "srifle_DMR_04_F", "", 65000, -1 },
            { "MMG_01_tan_F", "", 150000, -1 },
            { "optic_Hamr", "", 2500, -1 },
            { "optic_MRCO", "", 2500, -1 },
            { "optic_NVS", "", 10000, -1 },
            { "optic_SOS", "", 10000, -1 },
            { "optic_KHS_old", "", 10000, -1 },
            { "optic_LRPS", "", 2500, -1 },
            { "optic_Nightstalker", "", 2500, -1 },
            { "optic_LRPS", "", 2500, -1 },
            { "optic_AMS", "", 10000, -1 },
            { "acc_flashlight", "", 2500, -1 },
            { "acc_pointer_IR", "", 2500, -1 },
            { "muzzle_snds_B", "", 5000, -1 },
            { "muzzle_snds_338_black", "", 5000, -1 },
            { "muzzle_snds_93mmg_tan", "", 5000, -1 },
            { "bipod_01_F_blk", "", 3600, -1 },
            { "bipod_02_F_blk", "", 3600, -1 },
            { "bipod_03_F_blk", "", 3600, -1 },
            { "SmokeShell", "", 5000, -1 },
            { "SmokeShellGreen", "Teargas", 5000, -1},
            { "HandGrenade_Stone", "Flashbang", 2500, -1 }
        };
        mags[] = {
            { "5Rnd_127x108_Mag", "", 500 },
            { "7Rnd_408_Mag", "", 500 },
            { "10Rnd_338_Mag", "", 500 },
            { "10Rnd_93x64_DMR_05_Mag", "", 500 },
            { "10Rnd_127x54_Mag", "", 500 },
            { "150Rnd_93x64_Mag", "", 500 }
        };
    };
 
    class cop_cop {
        name = "Delicate Chief of Police Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 7, "You must be a Chief of Police!" };
        items[] = {
          { "srifle_GM6_F", "", 50000, -1 },
          { "srifle_LRR_F", "", 35000, -1 },
          { "srifle_DMR_02_F", "", 65000, -1 },
          { "srifle_DMR_05_blk_F", "", 60000, -1 },
          { "srifle_DMR_04_F", "", 65000, -1 },
          { "MMG_01_tan_F", "", 150000, -1 },
          { "MMG_02_black_F", "", 150000, -1 },
          { "optic_Hamr", "", 2500, -1 },
          { "optic_MRCO", "", 2500, -1 },
          { "optic_NVS", "", 10000, -1 },
          { "optic_SOS", "", 10000, -1 },
          { "optic_KHS_old", "", 10000, -1 },
          { "optic_LRPS", "", 2500, -1 },
          { "optic_Nightstalker", "", 2500, -1 },
          { "optic_LRPS", "", 2500, -1 },
          { "optic_AMS", "", 10000, -1 },
          { "acc_flashlight", "", 2500, -1 },
          { "acc_pointer_IR", "", 2500, -1 },
          { "muzzle_snds_B", "", 5000, -1 },
          { "muzzle_snds_338_black", "", 5000, -1 },
          { "muzzle_snds_93mmg_tan", "", 5000, -1 },
          { "bipod_01_F_blk", "", 3600, -1 },
          { "bipod_02_F_blk", "", 3600, -1 },
          { "bipod_03_F_blk", "", 3600, -1 },
          { "SmokeShell", "", 5000, -1 },
          { "SmokeShellGreen", "Teargas", 5000, -1},
          { "HandGrenade_Stone", "Flashbang", 2500, -1 }
        };
        mags[] = {
            { "5Rnd_127x108_Mag", "", 500 },
            { "7Rnd_408_Mag", "", 500 },
            { "10Rnd_338_Mag", "", 500 },
            { "10Rnd_93x64_DMR_05_Mag", "", 500 },
            { "10Rnd_127x54_Mag", "", 500 },
            { "130Rnd_338_Mag", "", 500 },
            { "150Rnd_93x64_Mag", "", 500 }
        };
    };
 
    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "ItemGPS", "", 100, -1 },
            { "Binocular", "", 150, -1 },
            { "ToolKit", "", 250, -1 },
            { "FirstAidKit", "", 150, -1 },
            { "Medikit", "", 500, -1 },
            { "NVGoggles", "", 1200, -1 }
        };
        mags[] = {};
    };
};