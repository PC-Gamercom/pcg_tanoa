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
    //Medic Shops
    class med_basic {
        name = "THW Shop";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "ItemRadio", "Handy",800, -1 },
            { "ItemGPS", "",50, -1 },
            { "ToolKit", "",100, -1 },
            { "FirstAidKit", "",50, -1 },
            { "Medikit", "",1000, -1 },
            { "NVGoggles", "",100, -1 }
        };
        mags[] = {};
    };
	
    //Armory Shops
    class gun {
        name = "Gun Store";
        side = "civ";
        license = "gun";
        level[] = { "", "", -1, "" };
        items[] = {
			{ "SMG_02_F", "",40000, -1 },
            { "SMG_01_F", "",40000, -1 },
            { "hgun_PDW2000_F", "",25000, -1 },
            { "hgun_Rook40_F", "",15000, -1 },
            { "hgun_Pistol_heavy_02_F", "",15000, -1 },
            { "hgun_Pistol_heavy_01_F", "",15000, -1 },
            { "hgun_ACPC2_F", "",15000, -1 },
            { "muzzle_snds_L", "",30000, -1 },
            { "muzzle_snds_acp", "",30000, -1 },
            { "optic_MRD", "",2500, -1 },
            { "optic_Yorris", "",2500, -1 },
            { "optic_Aco_smg", "",2500, -1 },
            { "optic_ACO_grn_smg", "",2500, -1 },
            { "optic_Holosight_smg", "",2500, -1 }
		};
        mags[] = {
            { "30Rnd_9x21_Mag", "",250, -1 },
            { "16Rnd_9x21_Mag", "",250, -1 },
            { "30Rnd_45ACP_Mag_SMG_01", "",500, -1 },
            { "11Rnd_45ACP_Mag", "",250, -1 },
            { "9Rnd_45ACP_Mag", "",250, -1 },
            { "6Rnd_45ACP_Cylinder", "",250, -1 }
		};
    };

    class rebel {
        name = "Rebellen Shop";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "NONE", "Sturmgewehre",0, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "arifle_SDAR_F", "",75000, -1 },
            { "arifle_Mk20C_plain_F", "",150000, -1 },
            { "arifle_Mk20_plain_F", "",150000, -1 },
            { "arifle_Mk20_GL_plain_F", "",180000, -1 },
            { "arifle_Mk20C_F", "",150000, -1 },
            { "arifle_Mk20_F", "",150000, -1 },
            { "arifle_Mk20_GL_F", "",180000, -1 },
            { "arifle_TRG20_F", "",150000, -1 },
            { "arifle_TRG21_F", "",150000, -1 },
            { "arifle_TRG21_GL_F", "",180000, -1 },
            { "arifle_SPAR_01_khk_F", "",190000, -1 },
            { "arifle_SPAR_01_GL_khk_F", "",210000, -1 },
            { "arifle_SPAR_01_snd_F", "",190000, -1 },
            { "arifle_SPAR_01_GL_snd_F", "",210000, -1 },
            { "arifle_SPAR_03_khk_F", "",700000, -1 },
            { "arifle_SPAR_03_snd_F", "",700000, -1 },
            { "arifle_CTAR_blk_F", "",200000, -1 },
            { "arifle_CTAR_GL_blk_F", "",225000, -1 },
            { "arifle_Katiba_C_F", "",225000, -1 },
            { "arifle_Katiba_F", "",225000, -1 },
            { "arifle_Katiba_GL_F", "",250000, -1 },
            { "arifle_MXC_F", "",300000, -1 },
            { "arifle_MXC_khk_F", "",300000, -1 },
            { "arifle_MX_F", "",300000, -1 },
            { "arifle_MX_khk_F", "",300000, -1 },
            { "arifle_MX_GL_F", "",375000, -1 },
            { "arifle_MX_GL_khk_F", "",375000, -1 },
            { "arifle_MXM_F", "",350000, -1 },
            { "arifle_MXM_khk_F", "",350000, -1 },
            { "arifle_AKS_F", "",250000, -1 },
            { "arifle_AKM_F", "",450000, -1 },
            { "arifle_AK12_F", "",500000, -1 },
            { "arifle_AK12_GL_F", "",550000, -1 },
            { "arifle_ARX_hex_F", "",950000, -1 },
            { "arifle_ARX_ghex_F", "",950000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "NONE", "Sniper- und Schütztengewehre",0, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "srifle_DMR_01_F", "",400000, -1 },
            { "srifle_EBR_F", "",500000, -1 },
            { "srifle_DMR_06_camo_F", "",600000, -1 },
            { "srifle_DMR_06_olive_F", "",600000, -1 },
            { "srifle_DMR_03_multicam_F", "",1000000, -1 },
            { "srifle_DMR_03_khaki_F", "",1000000, -1 },
            { "srifle_DMR_03_tan_F", "",1000000, -1 },
            { "srifle_DMR_03_woodland_F", "",1000000, -1 },
            { "srifle_DMR_07_hex_F", "",1000000, -1 },
            { "srifle_DMR_07_ghex_F", "",1000000, -1 },
            { "srifle_LRR_camo_F", "",4000000, -1 },
            { "srifle_LRR_tna_F", "",4000000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "NONE", "Launcher",0, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "launch_RPG7_F", "",750000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "NONE", "Zubehör",0, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",5000, -1 },
            { "optic_ACO_grn", "",5000, -1 },
            { "optic_Holosight_blk_F", "",7500, -1 },
            { "optic_Holosight", "",7500, -1 },
            { "optic_Holosight_khk_F", "",7500, -1 },
            { "optic_MRCO", "",10000, -1 },
            { "optic_Hamr", "",10000, -1 },
            { "optic_Hamr_khk_F", "",10000, -1 },
            { "optic_Arco", "",10000, -1 },
            { "optic_Arco_ghex_F", "",10000, -1 },
            { "optic_Arco_blk_F", "",10000, -1 },
            { "optic_Erco_khk_F", "",10000, -1 },
            { "optic_Erco_snd_F", "",10000, -1 },
            { "optic_Erco_blk_F", "",10000, -1 },
            { "optic_DMS", "",15000, -1 },
            { "optic_DMS_ghex_F", "",15000, -1 },
            { "optic_AMS", "",17500, -1 },
            { "optic_AMS_snd", "",17500, -1 },
            { "optic_AMS_khk", "",17500, -1 },
            { "optic_KHS_blk", "",17500, -1 },
            { "optic_KHS_old", "",17500, -1 },
            { "optic_KHS_tan", "",17500, -1 },
            { "optic_KHS_hex", "",17500, -1 },
            { "optic_SOS", "",20000, -1 },
            { "optic_SOS_khk_F", "",20000, -1 },
            { "optic_LRPS", "",25000, -1 },
            { "optic_LRPS_ghex_F", "",25000, -1 },
            { "optic_LRPS_tna_F", "",25000, -1 },
            { "optic_NVS", "",75000, -1 },
            { "muzzle_snds_B", "",50000, -1 },
            { "muzzle_snds_B_khk_F", "",50000, -1 },
            { "muzzle_snds_B_snd_F", "",50000, -1 },
            { "muzzle_snds_58_blk_F", "",50000, -1 },
            { "muzzle_snds_58_wdm_F", "",50000, -1 },
            { "muzzle_snds_H", "",50000, -1 },
            { "muzzle_snds_H_khk_F", "",50000, -1 },
            { "muzzle_snds_M", "",50000, -1 },
            { "muzzle_snds_M_khk_F", "",50000, -1 },
            { "muzzle_snds_M_snd_F", "",50000, -1 },
            { "muzzle_snds_65_Ti_blk_F", "",50000, -1 },
            { "muzzle_snds_65_Ti_hex_F", "",50000, -1 },
            { "muzzle_snds_65_Ti_ghex_F", "",50000, -1 },
            { "bipod_01_F_khk", "",65000, -1 },
            { "bipod_01_F_blk", "",65000, -1 },
            { "bipod_01_F_snd", "",65000, -1 },
            { "bipod_01_F_mtp", "",65000, -1 },
            { "bipod_02_F_blk", "",65000, -1 },
            { "bipod_02_F_hex", "",65000, -1 },
            { "bipod_02_F_tan", "",65000, -1 },
            { "bipod_03_F_blk", "",65000, -1 },
            { "bipod_03_F_oli", "",65000, -1 },
            { "UGL_FlareWhite_F", "",500, -1 },
            { "UGL_FlareGreen_F", "",500, -1 },
            { "UGL_FlareRed_F", "",500, -1 },
            { "UGL_FlareYellow_F", "",500, -1 },
            { "UGL_FlareCIR_F", "",500, -1 },
            { "1Rnd_Smoke_Grenade_shell", "",500, -1 },
            { "1Rnd_SmokeRed_Grenade_shell", "",500, -1 },
            { "1Rnd_SmokeYellow_Grenade_shell", "",500, -1 },
            { "1Rnd_SmokePurple_Grenade_shell", "",500, -1 },
            { "1Rnd_SmokeBlue_Grenade_shell", "",500, -1 },
            { "1Rnd_SmokeOrange_Grenade_shell", "",500, -1 },
            { "1Rnd_SmokeGreen_Grenade_shell","Tränengas",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "NONE", "Kleine Kaliber",0, -1 },
			{ "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "SMG_02_F", "",40000, -1 },
            { "SMG_01_F", "",40000, -1 },
            { "hgun_PDW2000_F", "",25000, -1 },
            { "hgun_Rook40_F", "",15000, -1 },
            { "hgun_Pistol_heavy_02_F", "",15000, -1 },
            { "hgun_Pistol_heavy_01_F", "",15000, -1 },
            { "hgun_Pistol_01_F", "",15000, -1 },
            { "hgun_P07_khk_F", "",15000, -1 },
            { "hgun_ACPC2_F", "",15000, -1 },
            { "muzzle_snds_L", "",30000, -1 },
            { "muzzle_snds_acp", "",30000, -1 },
            { "optic_MRD", "",2500, -1 },
            { "optic_Yorris", "",2500, -1 },
            { "optic_Aco_smg", "",2500, -1 },
            { "optic_ACO_grn_smg", "",2500, -1 },
            { "optic_Holosight_smg_blk_F", "",2500, -1 },
            { "optic_Holosight_smg", "",2500, -1 }
        };
        mags[] = {
            { "7Rnd_408_Mag", "",5000, -1 },
            { "20Rnd_762x51_Mag", "",1000, -1 },
            { "10Rnd_762x54_Mag", "",500, -1 },
            { "30Rnd_65x39_caseless_green", "",500, -1 },
            { "30Rnd_65x39_caseless_mag", "",500, -1 },
            { "30Rnd_556x45_Stanag", "",500, -1 },
            { "20Rnd_556x45_UW_mag", "",500, -1 },
            { "30Rnd_9x21_Mag", "",500, -1 },
            { "16Rnd_9x21_Mag", "",250, -1 },
            { "30Rnd_45ACP_Mag_SMG_01", "",500, -1 },
            { "11Rnd_45ACP_Mag", "",250, -1 },
            { "9Rnd_45ACP_Mag", "",250, -1 },
            { "6Rnd_45ACP_Cylinder", "",250, -1 },
            { "30Rnd_545x39_Mag_F", "",500, -1 },
            { "30Rnd_762x39_Mag_F", "",500, -1 },
            { "30Rnd_580x42_Mag_F", "",500, -1 },
            { "20Rnd_650x39_Cased_Mag_F", "",500, -1 },
            { "RPG7_F", "",750000, -1 }
        };
    };

    class gang {
        name = "Hideout Arsenal";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "NONE", "Sturmgewehre",0, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "arifle_SDAR_F", "",75000, -1 },
            { "arifle_Mk20C_plain_F", "",150000, -1 },
            { "arifle_Mk20_plain_F", "",150000, -1 },
            { "arifle_Mk20_GL_plain_F", "",180000, -1 },
            { "arifle_Mk20C_F", "",150000, -1 },
            { "arifle_Mk20_F", "",150000, -1 },
            { "arifle_Mk20_GL_F", "",180000, -1 },
            { "arifle_TRG20_F", "",150000, -1 },
            { "arifle_TRG21_F", "",150000, -1 },
            { "arifle_TRG21_GL_F", "",180000, -1 },
            { "arifle_SPAR_01_khk_F", "",190000, -1 },
            { "arifle_SPAR_01_GL_khk_F", "",210000, -1 },
            { "arifle_SPAR_01_snd_F", "",190000, -1 },
            { "arifle_SPAR_01_GL_snd_F", "",210000, -1 },
            { "arifle_CTAR_blk_F", "",200000, -1 },
            { "arifle_CTAR_GL_blk_F", "",225000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "NONE", "Zubehör",0, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",5000, -1 },
            { "optic_ACO_grn", "",5000, -1 },
            { "optic_Holosight_blk_F", "",7500, -1 },
            { "optic_Holosight", "",7500, -1 },
            { "optic_Holosight_khk_F", "",7500, -1 },
            { "optic_MRCO", "",10000, -1 },
            { "optic_Hamr", "",10000, -1 },
            { "optic_Hamr_khk_F", "",10000, -1 },
            { "optic_Arco", "",10000, -1 },
            { "optic_Arco_ghex_F", "",10000, -1 },
            { "optic_Arco_blk_F", "",10000, -1 },
            { "optic_Erco_khk_F", "",10000, -1 },
            { "optic_Erco_snd_F", "",10000, -1 },
            { "optic_Erco_blk_F", "",10000, -1 },
            { "optic_DMS", "",15000, -1 },
            { "optic_DMS_ghex_F", "",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "NONE", "Kleine Kaliber",0, -1 },
			{ "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "SMG_02_F", "",40000, -1 },
            { "SMG_01_F", "",40000, -1 },
            { "hgun_PDW2000_F", "",25000, -1 },
            { "hgun_Rook40_F", "",15000, -1 },
            { "hgun_Pistol_heavy_02_F", "",15000, -1 },
            { "hgun_Pistol_heavy_01_F", "",15000, -1 },
            { "hgun_Pistol_01_F", "",15000, -1 },
            { "hgun_P07_khk_F", "",15000, -1 },
            { "hgun_ACPC2_F", "",15000, -1 },
            { "muzzle_snds_L", "",30000, -1 },
            { "muzzle_snds_acp", "",30000, -1 },
            { "optic_MRD", "",2500, -1 },
            { "optic_Yorris", "",2500, -1 },
            { "optic_Aco_smg", "",2500, -1 },
            { "optic_ACO_grn_smg", "",2500, -1 },
            { "optic_Holosight_smg_blk_F", "",2500, -1 },
            { "optic_Holosight_smg", "",2500, -1 }
        };
        mags[] = {
            { "30Rnd_65x39_caseless_green", "",500, -1 },
            { "30Rnd_65x39_caseless_mag", "",500, -1 },
            { "30Rnd_556x45_Stanag", "",500, -1 },
            { "20Rnd_556x45_UW_mag", "",500, -1 },
            { "30Rnd_9x21_Mag", "",500, -1 },
            { "16Rnd_9x21_Mag", "",250, -1 },
            { "30Rnd_45ACP_Mag_SMG_01", "",500, -1 },
            { "11Rnd_45ACP_Mag", "",250, -1 },
            { "9Rnd_45ACP_Mag", "",250, -1 },
            { "6Rnd_45ACP_Cylinder", "",250, -1 },
            { "30Rnd_545x39_Mag_F", "",500, -1 },
            { "30Rnd_762x39_Mag_F", "",500, -1 },
            { "30Rnd_580x42_Mag_F", "",500, -1 },
            { "30Rnd_65x39_caseless_green", "",500, -1 },
            { "20Rnd_650x39_Cased_Mag_F", "",500, -1 },
            { "RPG7_F", "",750000, -1 }
        };
    };

    //Basic Shops
    class genstore {
        name = "Hornbach";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "ItemRadio", "Handy",800, -1 },
            { "Binocular", "",150, -1 },
			{ "ItemGPS", "",100, -1 },
			{ "ToolKit", "",3500, -1 },
			{ "FirstAidKit", "",150, -1 },
			{ "NVGoggles", "",1500, -1 },
			{ "NVGoggles_INDEP", "",1500, -1 },
			{ "NVGoggles_OPFOR", "",1500, -1 },
			{ "NVGoggles_tna_F", "",1500, -1 },
            { "Rangefinder", "",10000, -1 }
        };
        mags[] = {};
    };
	class zubehoer {
        name = "Zubehoer";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "ItemRadio", "Handy",800, -1 },
            { "Binocular", "",150, -1 },
			{ "ItemGPS", "",100, -1 },
			{ "ToolKit", "",3500, -1 },
			{ "NVGoggles", "",1500, -1 },
			{ "NVGoggles_INDEP", "",1500, -1 },
			{ "NVGoggles_OPFOR", "",1500, -1 },
			{ "NVGoggles_tna_F", "",1500, -1 }
        };
        mags[] = {};
    };
	class apotheke {
        name = "apotheke";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
		{ "FirstAidKit", "",50, -1 }
        };
        mags[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 1, "Du musst Polizist sein!" };
        items[] = {
            { "ItemRadio", "Handy",800, -1 },
            { "ItemGPS", "",100, -1 },
            { "Binocular", "",100, -1 },
            { "Rangefinder", "",500, -1 },
            { "ToolKit", "",100, -1 },
            { "FirstAidKit", "",100, -1 },
            { "Medikit", "",1000, -1 },
            { "NVGoggles", "",10, -1 },
            { "NVGoggles_INDEP", "",10, -1 },
            { "NVGoggles_OPFOR", "",10, -1 },
			{ "NVGoggles_tna_F", "",1500, -1 },
            { "Chemlight_red", "",20, -1 },
            { "Chemlight_green", "",20, -1 },
            { "Chemlight_blue", "",20, -1 }
        };
        mags[] = {
        };
    };
	
    class cop_cadet {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 1, "Du musst beim Ordnungsamts sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "muzzle_snds_L", "",5000, -1 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 }
        };
    };
	
    class cop_officer {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 2, "Du musst bei Gendarmerie sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "arifle_MX_F","",15000, -1 },
			{ "arifle_AK12_F","",15000, -1 },
			{ "arifle_SPAR_01_GL_blk_F","",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "optic_MRCO", "",5000, -1 },
            { "optic_Hamr", "",5000, -1 },
            { "optic_Erco_blk_F", "",5000, -1 },
            { "optic_Arco", "",5000, -1 },
            { "optic_DMS", "",10000, -1 },
            { "muzzle_snds_M", "",10000, -1 },
            { "muzzle_snds_L", "",5000, -1 },
            { "bipod_01_F_blk", "",10000, -1 },
            { "bipod_01_F_snd", "",10000, -1 },

        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 },
			{"30Rnd_65x39_caseless_mag","",500,-1},
			{"30Rnd_556x45_Stanag","",500,-1},
			{"30Rnd_762x39_Mag_F","",500,-1}
        };
    };
	
    class cop_trooper {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 3, "Du musst Trooper sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "arifle_MX_F","",15000, -1 },
			{ "arifle_AK12_F","",15000, -1 },
			{ "arifle_SPAR_01_GL_blk_F","",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "optic_MRCO", "",5000, -1 },
            { "optic_Hamr", "",5000, -1 },
            { "optic_Erco_blk_F", "",5000, -1 },
            { "optic_Arco", "",5000, -1 },
            { "optic_DMS", "",10000, -1 },
            { "muzzle_snds_M", "",10000, -1 },
            { "muzzle_snds_L", "",5000, -1 },
            { "bipod_01_F_blk", "",10000, -1 },
            { "bipod_01_F_snd", "",10000, -1 },

        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 },
			{"30Rnd_65x39_caseless_mag","",500,-1},
			{"30Rnd_556x45_Stanag","",500,-1},
			{"30Rnd_762x39_Mag_F","",500,-1}
        };
    };
	
    class cop_statetrooper {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 4, "Du musst State Trooper sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "arifle_MX_F","",15000, -1 },
			{ "arifle_AK12_F","",15000, -1 },
			{ "arifle_SPAR_01_GL_blk_F","",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "optic_MRCO", "",5000, -1 },
            { "optic_Hamr", "",5000, -1 },
            { "optic_Erco_blk_F", "",5000, -1 },
            { "optic_Arco", "",5000, -1 },
            { "optic_DMS", "",10000, -1 },
            { "muzzle_snds_M", "",10000, -1 },
            { "muzzle_snds_L", "",5000, -1 },
            { "bipod_01_F_blk", "",10000, -1 },
            { "bipod_01_F_snd", "",10000, -1 },

        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 },
			{"30Rnd_65x39_caseless_mag","",500,-1},
			{"30Rnd_556x45_Stanag","",500,-1},
			{"30Rnd_762x39_Mag_F","",500,-1}
        };
    };
	
    class cop_sergeant {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 5, "Du musst Sergeant sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "arifle_MX_F","",15000, -1 },
			{ "arifle_AK12_F","",15000, -1 },
			{ "arifle_SPAR_01_GL_blk_F","",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "optic_MRCO", "",5000, -1 },
            { "optic_Hamr", "",5000, -1 },
            { "optic_Erco_blk_F", "",5000, -1 },
            { "optic_Arco", "",5000, -1 },
            { "optic_DMS", "",10000, -1 },
            { "muzzle_snds_M", "",10000, -1 },
            { "muzzle_snds_L", "",5000, -1 },
            { "bipod_01_F_blk", "",10000, -1 },
            { "bipod_01_F_snd", "",10000, -1 },

        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 },
			{"30Rnd_65x39_caseless_mag","",500,-1},
			{"30Rnd_556x45_Stanag","",500,-1},
			{"30Rnd_762x39_Mag_F","",500,-1}
        };
    };
	
    class cop_staffsergeant {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 6, "Du musst Staff Sergeant sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "arifle_MX_F","",15000, -1 },
			{ "arifle_AK12_F","",15000, -1 },
			{ "arifle_SPAR_01_GL_blk_F","",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "optic_MRCO", "",5000, -1 },
            { "optic_Hamr", "",5000, -1 },
            { "optic_Erco_blk_F", "",5000, -1 },
            { "optic_Arco", "",5000, -1 },
            { "optic_DMS", "",10000, -1 },
            { "muzzle_snds_M", "",10000, -1 },
            { "muzzle_snds_L", "",5000, -1 },
            { "bipod_01_F_blk", "",10000, -1 },
            { "bipod_01_F_snd", "",10000, -1 },

        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 },
			{"30Rnd_65x39_caseless_mag","",500,-1},
			{"30Rnd_556x45_Stanag","",500,-1},
			{"30Rnd_762x39_Mag_F","",500,-1}
        };
    };
	
    class cop_lieutenant {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 7, "Du musst Lieutenant sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "arifle_MX_F","",15000, -1 },
			{ "arifle_AK12_F","",15000, -1 },
			{ "arifle_SPAR_01_GL_blk_F","",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "optic_MRCO", "",5000, -1 },
            { "optic_Hamr", "",5000, -1 },
            { "optic_Erco_blk_F", "",5000, -1 },
            { "optic_Arco", "",5000, -1 },
            { "optic_DMS", "",10000, -1 },
            { "muzzle_snds_M", "",10000, -1 },
            { "muzzle_snds_L", "",5000, -1 },
            { "bipod_01_F_blk", "",10000, -1 },
            { "bipod_01_F_snd", "",10000, -1 },

        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 },
			{"30Rnd_65x39_caseless_mag","",500,-1},
			{"30Rnd_556x45_Stanag","",500,-1},
			{"30Rnd_762x39_Mag_F","",500,-1}
        };
    };
	
    class cop_1stlieutenant {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 8, "Du musst 1st Lieutenant sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "arifle_MX_F","",15000, -1 },
			{ "arifle_AK12_F","",15000, -1 },
			{ "arifle_SPAR_01_GL_blk_F","",15000, -1 },
			{ "SMG_05_F","",15000, -1 },
			{ "arifle_MXM_Black_F","",15000, -1 },
			{ "arifle_SPAR_03_blk_F","",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "optic_MRCO", "",5000, -1 },
            { "optic_Hamr", "",5000, -1 },
            { "optic_Erco_blk_F", "",5000, -1 },
            { "optic_Arco", "",5000, -1 },
            { "optic_DMS", "",10000, -1 },
            { "muzzle_snds_M", "",10000, -1 },
            { "muzzle_snds_L", "",5000, -1 },
            { "bipod_01_F_blk", "",10000, -1 },
            { "bipod_01_F_snd", "",10000, -1 },

        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 },
			{"30Rnd_65x39_caseless_mag","",500,-1},
			{"30Rnd_556x45_Stanag","",500,-1},
			{"30Rnd_762x39_Mag_F","",500,-1},
			{"20Rnd_762x51_Mag","",500,-1}
			
        };
    };
	
    class cop_captain {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 9, "Du musst Captain sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "arifle_MX_F","",15000, -1 },
			{ "arifle_AK12_F","",15000, -1 },
			{ "arifle_SPAR_01_GL_blk_F","",15000, -1 },
			{ "SMG_05_F","",15000, -1 },
			{ "arifle_MXM_Black_F","",15000, -1 },
			{ "arifle_SPAR_03_blk_F","",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "optic_MRCO", "",5000, -1 },
            { "optic_Hamr", "",5000, -1 },
            { "optic_Erco_blk_F", "",5000, -1 },
            { "optic_Arco", "",5000, -1 },
            { "optic_DMS", "",10000, -1 },
            { "muzzle_snds_M", "",10000, -1 },
            { "muzzle_snds_L", "",5000, -1 },
            { "bipod_01_F_blk", "",10000, -1 },
            { "bipod_01_F_snd", "",10000, -1 },

        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 },
			{"30Rnd_65x39_caseless_mag","",500,-1},
			{"30Rnd_556x45_Stanag","",500,-1},
			{"30Rnd_762x39_Mag_F","",500,-1},
			{"20Rnd_762x51_Mag","",500,-1}
			
        };
    };
    class cop_inspector {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 10, "Du musst Inspector sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "arifle_MX_F","",15000, -1 },
			{ "arifle_AK12_F","",15000, -1 },
			{ "arifle_SPAR_01_GL_blk_F","",15000, -1 },
			{ "SMG_05_F","",15000, -1 },
			{ "arifle_MXM_Black_F","",15000, -1 },
			{ "arifle_SPAR_03_blk_F","",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "optic_MRCO", "",5000, -1 },
            { "optic_Hamr", "",5000, -1 },
            { "optic_Erco_blk_F", "",5000, -1 },
            { "optic_Arco", "",5000, -1 },
            { "optic_DMS", "",10000, -1 },
            { "muzzle_snds_M", "",10000, -1 },
            { "muzzle_snds_L", "",5000, -1 },
            { "bipod_01_F_blk", "",10000, -1 },
            { "bipod_01_F_snd", "",10000, -1 },

        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 },
			{"30Rnd_65x39_caseless_mag","",500,-1},
			{"30Rnd_556x45_Stanag","",500,-1},
			{"30Rnd_762x39_Mag_F","",500,-1},
			{"20Rnd_762x51_Mag","",500,-1}
			
        };
    };
    class cop_2ndchief {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 11, "Du musst Deputy Chief sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "arifle_MX_F","",15000, -1 },
			{ "arifle_AK12_F","",15000, -1 },
			{ "arifle_SPAR_01_GL_blk_F","",15000, -1 },
			{ "SMG_05_F","",15000, -1 },
			{ "arifle_MXM_Black_F","",15000, -1 },
			{ "arifle_SPAR_03_blk_F","",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "optic_MRCO", "",5000, -1 },
            { "optic_Hamr", "",5000, -1 },
            { "optic_Erco_blk_F", "",5000, -1 },
            { "optic_Arco", "",5000, -1 },
            { "optic_DMS", "",10000, -1 },
            { "muzzle_snds_M", "",10000, -1 },
            { "muzzle_snds_L", "",5000, -1 },
            { "bipod_01_F_blk", "",10000, -1 },
            { "bipod_01_F_snd", "",10000, -1 },

        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 },
			{"30Rnd_65x39_caseless_mag","",500,-1},
			{"30Rnd_556x45_Stanag","",500,-1},
			{"30Rnd_762x39_Mag_F","",500,-1},
			{"20Rnd_762x51_Mag","",500,-1}
			
        };
    };
    class cop_chief {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 12, "Du musst Chief o. Police sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "arifle_MX_F","",15000, -1 },
			{ "arifle_AK12_F","",15000, -1 },
			{ "arifle_SPAR_01_GL_blk_F","",15000, -1 },
			{ "SMG_05_F","",15000, -1 },
			{ "arifle_MXM_Black_F","",15000, -1 },
			{ "arifle_SPAR_03_blk_F","",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "optic_MRCO", "",5000, -1 },
            { "optic_Hamr", "",5000, -1 },
            { "optic_Erco_blk_F", "",5000, -1 },
            { "optic_Arco", "",5000, -1 },
            { "optic_DMS", "",10000, -1 },
            { "muzzle_snds_M", "",10000, -1 },
            { "muzzle_snds_L", "",5000, -1 },
            { "bipod_01_F_blk", "",10000, -1 },
            { "bipod_01_F_snd", "",10000, -1 },

        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 },
			{"30Rnd_65x39_caseless_mag","",500,-1},
			{"30Rnd_556x45_Stanag","",500,-1},
			{"30Rnd_762x39_Mag_F","",500,-1},
			{"20Rnd_762x51_Mag","",500,-1}
			
        };
    };
	
    class cop_sniper {
        name = "Polizei Shop";
        side = "cop";
        license = "";
        level[] = { "license_cop_sniper", "BOOL", true, "Du musst Polizei Sniper sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "arifle_MX_F","",15000, -1 },
			{ "arifle_AK12_F","",15000, -1 },
			{ "arifle_SPAR_01_GL_blk_F","",15000, -1 },
			{ "SMG_05_F","",15000, -1 },
			{ "arifle_MXM_Black_F","",15000, -1 },
			{ "arifle_SPAR_03_blk_F","",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "optic_MRCO", "",5000, -1 },
            { "optic_Hamr", "",5000, -1 },
            { "optic_Erco_blk_F", "",5000, -1 },
            { "optic_Arco", "",5000, -1 },
            { "optic_DMS", "",10000, -1 },
            { "muzzle_snds_M", "",10000, -1 },
            { "muzzle_snds_L", "",5000, -1 },
            { "bipod_01_F_blk", "",10000, -1 },
            { "bipod_01_F_snd", "",10000, -1 },

        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 },
			{"30Rnd_65x39_caseless_mag","",500,-1},
			{"30Rnd_556x45_Stanag","",500,-1},
			{"30Rnd_762x39_Mag_F","",500,-1},
			{"20Rnd_762x51_Mag","",500,-1}
			
        };
    };
	
    class cop_fbi {
        name = "FBI Shop";
        side = "cop";
        license = "";
        level[] = { "license_cop_fbi", "BOOL", true, "Du musst FBI Mitglied sein!" };
        items[] = {
            { "hgun_P07_snds_F","Taser Pistole",500, -1 },
            { "arifle_MX_F","",15000, -1 },
			{ "arifle_AK12_F","",15000, -1 },
			{ "arifle_SPAR_01_GL_blk_F","",15000, -1 },
			{ "SMG_05_F","",15000, -1 },
			{ "arifle_MXM_Black_F","",15000, -1 },
			{ "arifle_SPAR_03_blk_F","",15000, -1 },
            { "NONE", "---------------------------------------------------------------------------",0, -1 },
            { "acc_flashlight", "",500, -1 },
            { "acc_pointer_IR", "",500, -1 },
            { "optic_Aco", "",1500, -1 },
            { "optic_ACO_grn", "",1500, -1 },
            { "optic_Holosight", "",2500, -1 },
            { "optic_MRCO", "",5000, -1 },
            { "optic_Hamr", "",5000, -1 },
            { "optic_Erco_blk_F", "",5000, -1 },
            { "optic_Arco", "",5000, -1 },
            { "optic_DMS", "",10000, -1 },
            { "muzzle_snds_M", "",10000, -1 },
            { "muzzle_snds_L", "",5000, -1 },
            { "bipod_01_F_blk", "",10000, -1 },
            { "bipod_01_F_snd", "",10000, -1 },

        };
        mags[] = {
            { "16Rnd_9x21_Mag","Taser 16rnd",100, -1 },
			{"30Rnd_65x39_caseless_mag","",500,-1},
			{"30Rnd_556x45_Stanag","",500,-1},
			{"30Rnd_762x39_Mag_F","",500,-1},
			{"20Rnd_762x51_Mag","",500,-1}
			
        };
    };
};