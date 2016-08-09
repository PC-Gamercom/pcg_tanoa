class DefaultEventhandlers;
class CfgPatches {
	class life_server {
		units[] = {"C_man_1"};
		weapons[] = {};
		requiredAddons[] = {"A3_Data_F","A3_Soft_F","A3_Soft_F_Offroad_01","A3_Characters_F"};
		fileName = "life_server.pbo";
		author[]= {"Tonic"};
	};
};

class Life_Server_Settings {
	class EXTDB {
		DatabaseName = "altislife";
		DebugMode = 0;
	};
};

class CfgFunctions {
	class BIS_Overwrite {
		tag = "BIS";
		class MP
		{
			file = "\life_server\Functions\MP";
			class initMultiplayer{};
			class call{};
			class spawn{};
			class execFSM{};
			class execVM{};
			class execRemote{};
			class addScore{};
			class setRespawnDelay{};
			class onPlayerConnected{};
			class initPlayable{};
			class missionTimeLeft{};
		};
	};

	class MySQL_Database {
		tag = "DB";
		class MySQL
		{
			file = "\life_server\Functions\MySQL";
			class numberSafe {};
			class mresArray {};
			class queryRequest{};
			class asyncCall{};
			class insertRequest{};
			class updateRequest{};
			class mresToArray {};
			class insertVehicle {};
			class bool{};
			class mresString {};
			class updatePartial {};
		};
	};

	class Life_System {
		tag = "life";
		class Wanted_Sys {
			file = "\life_server\Functions\WantedSystem";
			class wantedFetch {};
			class wantedPerson {};
			class wantedBounty {};
			class wantedRemove {};
			class wantedAdd {};
			class wantedCrimes {};
			class wantedProfUpdate {};
		};

		class Jail_Sys {
			file = "\life_server\Functions\Jail";
			class jailSys {};
		};

		class Client_Code {
			file = "\life_server\Functions\Client";
		};
	};

	class TON_System {
		tag = "TON";
		class Smartphone
		{
			file = "\life_server\Functions\Smartphone";
			class handleMessages {};
			class msgRequest {};
		};
		class Systems {
			file = "\life_server\Functions\Systems";
			class insureCar{};
			class managesc {};
			class cleanup {};
			class huntingZone {};
			class getID {};
			class vehicleCreate {};
			class vehicleDead {};
			class spawnVehicle {};
			class getVehicles {};
			class vehicleStore {};
			class vehicleDelete {};
			class spikeStrip {};
			class logIt {};
			class federalUpdate {};
			class chopShopSell {};
			class clientDisconnect {};
			class cleanupRequest {};
			class setObjVar {};
			class keyManagement {};
			class getImpoundedvehicles {};
			class vehicleImpound {};
		};

		class Housing {
			file = "\life_server\Functions\Housing";
			class addHouse {};
			class addContainer {};
			class fetchPlayerHouses {};
			class initHouses {};
			class sellHouse {};
			class sellHouseContainer {};
			class updateHouseContainers {};
			class updateHouseTrunk {};
			class houseCleanup {};
			class deleteDBContainer {};
		};

		class Gangs {
			file = "\life_server\Functions\Gangs";
			class insertGang {};
			class queryPlayerGang {};
			class removeGang {};
			class updateGang {};
		};

		class Actions {
			file = "\life_server\Functions\Actions";
			class pickupAction {};
		};
		class scripts
		{
		file = "\life_server\Functions\Scripts";
		class diesel {};
		class fuel {};
		class fuelAir {};
		class fuelCheck {};
		class fuelConfig {};
		class fuelPrices {};
		class initFuelAction {};
		class super {};
		class vehicleCheck {};
		class scriptsave {postInit=1;};
		};
		class DynMarket
		{
		 file = "\life_server\Functions\DynMarket";
		 class calculatePrices {};
		 class config {};
		 class getUpdate {};
		 class HandleDB {};
		 class playerLogged {};
		 class sleeper {}; 
		};
		class vAH {
			file = "\life_server\Functions\vAH";
			class vAH_init {};
			class vAH_update {};
		};

	};
};

class CfgVehicles {
	class Car_F;
	class CAManBase;
	class Civilian;
	class Civilian_F : Civilian {
		class EventHandlers;
	};

	class C_man_1 : Civilian_F {
		class EventHandlers: EventHandlers {
			init = "(_this select 0) execVM ""\life_server\fix_headgear.sqf""";
		};
	};
};
