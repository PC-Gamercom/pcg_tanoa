/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

// ███████████████████████████████████████████████████████████████████████
// █████████████████ DYNAMIC MARKET BASIC CONFIGURATION ██████████████████
// ███████████████████████████████████████████████████████████████████████

DYNMARKET_Serveruptime         = 04;   // Serveruptime after restart in hours
DYNMARKET_UseExternalDatabase  = false; // Should the script use the External Database?
DYNMARKET_PriceUpdateInterval  = 01;   // After how many minutes should the price be updated?
DYNMARKET_CreateBackups        = false; // Should the server save write the prices regulary into the Database? If false, it will save the prices before Server-restart?
DYNMARKET_CreateBackupInterval = 03;   // After how many updates (PriceUpdateIntervals) should the prices be saved into the Database?
DYNMARKET_UserNotification     = false; // Should the user be informed with a hint whenever the prices got updated?

// █████████████████ USER NOTIFICATION TEXTS  █████████████████

DYNMARKET_UserNotification_Text = 
[
	"Your prices have been updated!",
	"The new prices are being calculated by the server..."
];

// █████████████████ ITEM GROUP CONFIGURATION █████████████████

DYNMARKET_Items_Groups =
[
	["Legal",
		[
			["banane",-1,10,50],
			["oliven",-1,30,100]
		],
		0.5
	],
	["Illegal", 
		[
			/*["peach",1,30,100]*/
		],
		0.5
	]
];

// █████████████████    ALL SELLABLE ITEMS    █████████████████

DYNMARKET_Items_ToTrack        = 
[
	//Misc
	["pickaxe",200],
	["flashlightshoulder",35],
	["fuelEmpty",35],
	["fuelFull",200],
	["spikeStrip",35],
	["lockpick",35],
	["goldbar",200],
	["blastingcharge",35],
	["boltcutter",35],
	["defusekit",35],
	["storagesmall",200],
	["storagebig",35],

	//Drink
	["redgull",200],
	["coffee",35],
	["waterBottle",35],

	
	//Food
	["tbacon",200],
	["donuts",35],
	["rabbit_raw",35],
	["rabbit",200],
	["salema_raw",35],
	["salema",35],
	["ornate_raw",200],
	["ornate",35],
	["mackerel_raw",35],
	["mackerel",35],
	["tuna_raw",35],
	["tuna",35],
	["mullet_raw",35],
	["mullet",35],
	["catshark_raw",35],
	["catshark",35],
	["turtle_raw",35],
	["turtle_soup",35],
	["hen_raw",35],
	["hen",35],
	["rooster_raw",35],
	["rooster",35],
	["sheep_raw",35],
	["sheep",35],
	["goat_raw",35],
	["goat",35],

	//ROHSTOFFE
	["banane",35],
	["oliven",35],
	["birnen",35],
	["muschel",50],
	["erdbeeren",35],
	["kiwi",25],
	["kirsche",35],
	["gerste",10],
	["hopfen",10],
	["weizen",10],
	["wasser",5],
	["hanffaser",20],
	["eichp",1900],
	["wolframp",1500],
	["alubarren",2200],
	["tropp",750],
	["kakaopulver",1350],
	["oil_processed",3200],
	["copper_refined",1600],
	["iron_refined",2000],
	["salt_refined",1450],
	["glass",1900],
	["gummip",750],
	["diamond_cut",4950],
	["cement",1350],
	["zinnbarren",3100],
	["heroin_processed",6000],
	["marijuana",4000],
	["cocaine_processed",7000],
	["korallever",3000]
];

//███████████████████████████████████████████████████████████████████████
//██████████████████ DO NOT MODIFY THE FOLLOWING CODE! ██████████████████
//███████████████████████████████████████████████████████████████████████

DYNMARKET_Items_CurrentPriceArr = [];
DYNMARKET_sellarraycopy = DYNMARKET_Items_ToTrack;
DYNMARKET_Serveruptime = (DYNMARKET_Serveruptime * 3600) - 300;
{
	_currentArray = _x;
	DYNMARKET_Items_CurrentPriceArr pushBack [_currentArray select 0,_currentArray select 1,0];
} forEach DYNMARKET_Items_ToTrack;
publicVariable "DYNMARKET_UserNotification";
publicVariable "DYNMARKET_UserNotification_Text";
if (DYNMARKET_UseExternalDatabase) then {[1] call TON_fnc_HandleDB;};
DYNMARKET_UpdateCount = 0;
if (DYNMARKET_UseExternalDatabase) then {
	[] spawn {
		sleep DYNMARKET_Serveruptime;
		diag_log "### DYNMARKET >> CURRENT PRICES ARE BEING WRITTEN TO THE DATABASE    ###";
		diag_log "### DYNMARKET >> AS PLANNED, AWAITING RESULT...                      ###";
		[0] call TON_fnc_HandleDB;
	};
};
sleep 5;
[] call TON_fnc_sleeper;
