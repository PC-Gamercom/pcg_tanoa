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

DYNMARKET_Serveruptime         = 05;   // Serveruptime after restart in hours
DYNMARKET_UseExternalDatabase  = true; // Should the script use the External Database?
DYNMARKET_PriceUpdateInterval  = 01;   // After how many minutes should the price be updated?
DYNMARKET_CreateBackups        = true; // Should the server save write the prices regulary into the Database? If false, it will save the prices before Server-restart?
DYNMARKET_CreateBackupInterval = 03;   // After how many updates (PriceUpdateIntervals) should the prices be saved into the Database?
DYNMARKET_UserNotification     = true; // Should the user be informed with a hint whenever the prices got updated?

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
			["apple",-1,10,50],
			["peach",-1,30,100]
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

	["banane",25],
	["ananas",50],
	["peach",125],
	["donut",130],
	["coffee",150],
	["waterBottle",170],
	["rabbit",190],
	["painkillers",190],
	["morphium",190],
	["redgull",190],
	["tbacon",190],
	["lockpick",190],
	["pickaxe",190],
	["fuelFull",200],
	["boltcutter",200],
	["blastingcharge",200],
	["zyankalikapsel",200],
	["blindfold",200],
	["handcuffs",200],
	["gpstracker",210],
	["protestSign",210],
	["beer",155],
	["bottledwhiskey",155],
	["bottledshine",300],
	
	["drakecocktail",1500],
	["salema",10],
	["ornate",10],
	
	["mackerel",350],
	["mullet",500],
	["tuna",1200],
	["catshark",75],
	["salema_raw",95000],
	["ornate_raw",35000],
	["mackerel_raw",7500],
	["mullet_raw",2500],
	["tuna_raw",75000],
	["catshark_raw",15000],
	
	["goldbar",1200],
	["meth",1700],
	["marijuana",1650],
	["kokosmilch",1850],
	["kokosfleisch",1450],
	["diamond_cut",2530],
	["cement",2350],
	
	["zucker",5000],
	["copper",5250],
	["palmenOl",5300],
	["zigaretten",5000],
	["steel",5250],
	["holz",5300],
	["coal",5000],
	["kristalle",5250],
	["uranIL",5300],
	
	["antiqui",5000],
	["crab",5250],
	["coralP",5300]
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
