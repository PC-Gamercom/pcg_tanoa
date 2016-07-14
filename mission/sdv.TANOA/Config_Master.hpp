#define true 1
#define false 0

/*
    Master settings for various features and functionality
*/
class Life_Settings {
    /* Persistent Settings */
    save_civ_weapons = true; //Allow civilians to save weapons on them?
    save_virtualItems = true; //Save Virtual items (all sides)?
    save_playerStats = false; //Save food & water (all sides)?
    save_veh_virtualItems = true; //Save Virtual items for vehicles (all sides)?
    save_veh_gear = true; //Save Gear for vehicles (all sides)?

    /* Clothing related settings */
    clothing_box = true; //true = preview inside a black box.  false = preview on map.
    clothing_masks[] = { "H_Shemag_olive", "H_Shemag_khk", "H_Shemag_tan", "H_Shemag_olive_hs", "H_ShemagOpen_khk", "H_ShemagOpen_tan", "G_Balaclava_blk", "G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Balaclava_oli", "G_Bandanna_aviator", "G_Bandanna_beast", "G_Bandanna_blk", "G_Bandanna_khk", "G_Bandanna_oli", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_tan", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_B_GhillieSuit", "H_RacingHelmet_1_black_F", "H_RacingHelmet_1_red_F", "H_RacingHelmet_1_white_F", "H_RacingHelmet_1_blue_F", "H_RacingHelmet_1_yellow_F", "H_RacingHelmet_1_green_F", "H_RacingHelmet_1_F", "H_RacingHelmet_2_F", "H_RacingHelmet_3_F", "H_RacingHelmet_4_F" };

    /* Cop related settings */
    cops_online_min = 5; //minimum cops online for robbing a bank

    /* Medic related settings*/
    allow_medic_weapons = true; // true allows medics to hold/use weapons - false disallows

    /* Revive system settings */
    revive_cops = true; //true to enable cops the ability to revive everyone or false for only medics/ems.
    revive_fee = 15000; //Revive fee that players have to pay and medics / EMS are rewarded

    /* House related settings */
    house_limit = 5; //Maximum amount of houses a player can own.

    /* Gang related settings */
    gang_price = 175000; //Price for creating a gang, remember they are persistent so keep it reasonable to avoid millions of gangs.
    gang_upgradeBase = 10000; //The base cost for upgrading slots in a gang
    gang_upgradeMultiplier = 4.5; //Not sure if in use?

    /* Player-related systems */
    enable_fatigue = false; //Set to false to disable the ARMA 3 false system.
    total_maxWeight = 20; //Static variable for the maximum weight allowed without having a backpack
    paycheck_period = 5; //Scaled in minutes

    /* Impound Variables */
    impound_car = 3500; //Price for impounding cars
    impound_boat = 2500; //Price for impounding boats
    impound_air = 8500; //Price for impounding helicopters / planes

    /* Initial Bank Amount */
    bank_cop = 7000; //Amount of cash on bank for new cops
    bank_civ = 30000; //Amount of cash on bank for new civillians
    bank_med = 7000; //Amount of cash on bank for new medics

    /* Paycheck Amount */
    paycheck_cop = 50; //Payment for cops
    paycheck_civ = 50; //Payment for civillians
    paycheck_med = 50; //Payment for medics

    /* Federal Reserve settings */
    noatm_timer = 10; //Time in minutes that players won't be able to deposit his money after selling stolen gold

    /* Spyglass settings */
    spyglass_init = false; //Enable or disable spyglass

    /* ATM settings */
    global_ATM = true; //Allow users to access any ATM on the map.

    /* Pump settings */
    Pump_service = false; //Allow users to use pump service on the map. Default = false

    /* Skins settings */
    civ_skins = false; //Enable or disable civilian skins. Before enabling, you must add all the SEVEN files to textures folder. (It must be named as: civilian_uniform_1.jpg, civilian_uniform_2.jpg...civilian_uniform_6.jpg, civilian_uniform_7.jpg)

    /* Car-shop Settings */
    vehicleShop_rentalOnly[] = { "B_MRAP_01_hmg_F", "B_G_Offroad_01_armed_F", "B_Boat_Armed_01_minigun_F" };

    /* Job-related stuff */
    delivery_points[] = { "dp_1", "dp_2", "dp_3", "dp_4", "dp_5", "dp_6", "dp_7", "dp_8", "dp_9", "dp_10", "dp_11", "dp_12", "dp_13", "dp_14", "dp_15", "dp_15", "dp_16", "dp_17","dp_18" };

    /* Wanted System related settings */
    /* crimes[] = {String, Bounty, Code} */
    crimes[] = {
        {"STR_Crime_187V","30000","187V"}, // Fahrlässige Tötung
        {"STR_Crime_187","40000","187"}, // Totschlag
        {"STR_Crime_901","10000","901"}, // Ausbruch
        {"STR_Crime_215","3000","215"}, // Versuchter Autodiebstahl
        {"STR_Crime_213","5000","213"}, // Illegales Sprengen
        {"STR_Crime_211","13000","211"}, // Raub
        {"STR_Crime_207","10000","207"}, // Entführung
        {"STR_Crime_207A","8000","207A"}, // versuchte Entführung
        {"STR_Crime_390","2000","390"}, // Öffentliche Trunkenheit
        {"STR_Crime_487","15000","487"}, // schwerer Diebstahl
        {"STR_Crime_488","10000","488"}, // Diebstahl
        {"STR_Crime_480","25000","480"}, // Fahrerflucht
        {"STR_Crime_481","3000","481"}, // BTM
        {"STR_Crime_482","3000","482"}, // Drogenhandel
        {"STR_Crime_483","2000","483"}, // Einfl. anderer
        {"STR_Crime_459","20000","459"}, // Einbruch
        {"STR_Crime_666","15000","666"}, // Steuerhinterziehung
        {"STR_Crime_667","50000","667"}, // Terrorismus
        {"STR_Crime_668","6000","668"}, // wildes Jagen
        {"STR_Crime_1","15000","1"}, // Organ dienb
        {"STR_Crime_2","4000","2"}, // Falschfahrer
        {"STR_Crime_3","2000","3"}, // Signal nicht beachtet
        {"STR_Crime_4","2000","4"}, // schnelles Fahren
        {"STR_Crime_5","4000","5"}, // Fahren ohne Licht
        {"STR_Crime_6","4000","6"}, // Fahren ohne Helm
        {"STR_Crime_7","1500","7"}, // Falschparken
        {"STR_Crime_8","10000","8"}, // Terror-Fahrzeug
        {"STR_Crime_9","10000","9"}, // schwerer Dienstahl
        {"STR_Crime_10","20000","10"}, // schwerer Diebstahl (Militär Fahrzeug)
        {"STR_Crime_11","5000","11"}, // Bew. Fahrzeug
        {"STR_Crime_12","5000","12"}, // Nicht erl. Überflug Stadt
        {"STR_Crime_13","5000","13"}, // Straßen sperren ohne erlaubnis
        {"STR_Crime_14","10000","14"}, // Schießerei ( legale Waffe )
        {"STR_Crime_15","25000","15"}, // Terror Waffen
        {"STR_Crime_16","3000","16"}, // Verbotene Kleidung
        {"STR_Crime_17","1000","17"}, // Vermummung
        {"STR_Crime_18","1500","18"}, // Weigert sich zur Zusammenarbeit
        {"STR_Crime_19","8000","19"}, // flucht
        {"STR_Crime_20","2000","20"}, // Beleidigung (1)
        {"STR_Crime_21","6000","21"}, // Beleidigung(2)
        {"STR_Crime_22","10000","22"}, // Drogen Dealen
        {"STR_Crime_23","35000","23"}, // Bankraub
        {"STR_Crime_24","43000","24"}, // Mord
        {"STR_Crime_25","75000","25"} // Mord (mehrfach )
    };
};

#include "Config_Clothing.hpp"
#include "Config_Licenses.hpp"
#include "Config_Vehicles.hpp"
#include "Config_Vehicles_sk.hpp"
#include "Config_vItems.hpp"
#include "Config_Weapons.hpp"
