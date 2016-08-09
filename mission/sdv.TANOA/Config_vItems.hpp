/*
*    Format:
*        level: ARRAY (This is for limiting items to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL)
*            2: What to compare to (-1 = Check Disabled)
*            3: Custom exit message (Optional)
*/
class VirtualShops {
    //Virtual Shops
    class market {
        name = "STR_Shops_Market";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "flashlightshoulder","waterBottle", "rabbit","hopfen","weizen","gerste","muschel","birnen","oliven","erdbeeren", "banane", "redgull", "tbacon","kirsche", "lockpick", "pickaxe", "fuelFull", "kiwi", "boltcutter", "storagesmall", "storagebig", "rabbit_raw", "hen_raw", "rooster_raw", "sheep_raw", "goat_raw" };
    };

    class rebel {
        name = "STR_Shops_Rebel";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "rabbit", "kirsche", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "kiwi", "boltcutter", "blastingcharge","banane" };
    };

    class gang {
        name = "STR_Shops_Gang";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "rabbit", "kirsche","banane", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "kiwi", "boltcutter", "blastingcharge" };
    };

    class wongs {
        name = "STR_Shops_Wongs";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "turtle_soup", "turtle_raw" };
    };
	class gummiv {
        name = "STR_Shops_Gummi";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "gummip"};
    };
	class schreiner {
        name = "STR_Shops_Schreiner";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "eichenholzbretter", "tropenholzbretter" };
    };
	
	class korallenexport {
        name = "STR_Shops_Korallenexport";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "korallever" };
    };
	
	class apotheke {
		name = "STR_Shops_Apotheke";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
        items[] = { "hanffaser" };
    };
	
	class kakaoundkaffee {
        name = "STR_Shops_KakaoUndKaffee";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "kakaopulver", "coffee" };
    };

    class coffee {
        name = "STR_Shops_Coffee";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "coffee", "donuts" };
    };

    class f_station_coffee {
        name = "STR_Shop_Station_Coffee";
        side = "";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "coffee", "donuts", "redgull", "fuelFull"};
    };

    class drugdealer {
        name = "STR_Shops_DrugDealer";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "cocaine_processed", "heroin_processed", "marijuana" };
    };

    class oil {
        name = "STR_Shops_Oil";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "oil_processed", "pickaxe", "fuelFull" };
    };

    class fishmarket {
        name = "STR_Shops_FishMarket";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "salema_raw", "salema", "ornate_raw", "ornate", "mackerel_raw", "mackerel", "tuna_raw", "tuna", "mullet_raw", "mullet", "catshark_raw", "catshark" };
    };

    class glass {
        name = "STR_Shops_Glass";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "glass" };
    };

    class iron  {
        name = "STR_Shops_Minerals";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "iron_refined", "copper_refined" };
    };

    class diamond {
        name = "STR_Shops_Diamond";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "diamond_cut" };
    };

    class salt {
        name = "STR_Shops_Salt";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "salt_refined" };
    };

    class cement {
        name = "STR_Shops_Cement";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "cement" };
    };

    class gold {
        name = "STR_Shops_Gold";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "goldp","goldbar" };
    };
    class cop {
        name = "STR_Shops_Cop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "flashlightshoulder","donuts", "coffee", "spikeStrip", "waterBottle", "rabbit", "apple", "redgull", "fuelFull", "defusekit" };
    };
	
	 class med {
        name = "STR_Shops_Med";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "rabbit", "apple", "redgull", "tbacon", "fuelFull", "peach","flashlightshoulder" };
    };
	class wolframp{
        name = "STR_MAR_wolframp_Trader";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "wolframp"};
    };
	class alup{
        name = "STR_MAR_Alu_Trader";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "alubarren"};
    };
	
	class zinn{
        name = "STR_MAR_Zinn_Trader";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "zinnbarren"};
    };
};

/*
*    CLASS:
*        variable = Variable Name
*        displayName = Item Name
*        weight = Item Weight
*        buyPrice = Item Buy Price
*        sellPrice = Item Sell Price
*        illegal = Illegal Item
*        edible = Item Edible (-1 = Disabled)
*        icon = Item Icon
*        processedItem = Processed Item
*/
class VirtualItems {
    //Virtual Items

    //Misc
    class pickaxe {
        variable = "pickaxe";
        displayName = "STR_Item_Pickaxe";
        weight = 2;
        buyPrice = 350;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_pickaxe.paa";
    };
	 class flashlightshoulder {
		 variable = "flashlightshoulder";
		 displayName = "STR_Item_FlashLightShoulder";
		 weight = 2;
		 buyPrice = 2500;
		 sellPrice = 350;
		 illegal = false;
		 edible = -1;
		 icon = "icons\flashlight.paa";
	}; 
	
	
    class fuelEmpty {
        variable = "fuelEmpty";
        displayName = "STR_Item_FuelE";
        weight = 2;
        buyPrice = -1;
        sellPrice = 50;
        illegal = false;
        edible = -1;
        icon = "icons\ico_fuelempty.paa";
    };

    class fuelFull {
        variable = "fuelFull";
        displayName = "STR_Item_FuelF";
        weight = 5;
        buyPrice = 850;
        sellPrice = 500;
        illegal = false;
        edible = -1;
        icon = "icons\ico_fuel.paa";
    };

    class spikeStrip {
        variable = "spikeStrip";
        displayName = "STR_Item_SpikeStrip";
        weight = 15;
        buyPrice = 2500;
        sellPrice = 1200;
        illegal = false;
        edible = -1;
        icon = "icons\ico_spikestrip.paa";
    };

    class lockpick {
        variable = "lockpick";
        displayName = "STR_Item_Lockpick";
        weight = 1;
        buyPrice = 5000;
        sellPrice = 2500;
        illegal = false;
        edible = -1;
        icon = "icons\ico_lockpick.paa";
    };

    class goldbar {
        variable = "goldBar";
        displayName = "STR_Item_GoldBar";
        weight = 12;
        buyPrice = -1;
        sellPrice = 2600;
        illegal = false;
        edible = -1;
        icon = "icons\ico_goldbar.paa";
    };

    class blastingcharge {
        variable = "blastingCharge";
        displayName = "STR_Item_BCharge";
        weight = 30;
        buyPrice = 35000;
        sellPrice = 10000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_blastingCharge.paa";
    };

    class boltcutter {
        variable = "boltCutter";
        displayName = "STR_Item_BCutter";
        weight = 5;
        buyPrice = 75000;
        sellPrice = 10000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_boltcutters.paa";
    };

    class defusekit {
        variable = "defuseKit";
        displayName = "STR_Item_DefuseKit";
        weight = 2;
        buyPrice = 2500;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_defusekit.paa";
    };

    class storagesmall {
        variable = "storageSmall";
        displayName = "STR_Item_StorageBS";
        weight = 5;
        buyPrice = 175000;
        sellPrice = 30000;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageSmall.paa";
    };

    class storagebig {
        variable = "storageBig";
        displayName = "STR_Item_StorageBL";
        weight = 10;
        buyPrice = 250000;
        sellPrice = 50000;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageBig.paa";
    };

    //Mined Items
	
	 class banane {
        variable = "banane";
        displayName = "STR_Item_Banane";
        weight = 1;
        buyPrice = 40;
        sellPrice = 35;
        illegal = false;
        edible = 10;
        icon = "";
    };
	class oliven {
        variable = "oliven";
        displayName = "STR_Item_Oliven";
        weight = 1;
        buyPrice = 40;
        sellPrice = 35;
        illegal = false;
        edible = 10;
        icon = "";
    };
	class birnen {
        variable = "birnen";
        displayName = "STR_Item_Birnen";
        weight = 1;
        buyPrice = 45;
        sellPrice = 35;
        illegal = false;
        edible = 10;
        icon = "";
    };
	class muschel {
        variable = "muschel";
        displayName = "STR_Item_Muschel";
        weight = 1;
        buyPrice = 65;
        sellPrice = 50;
        illegal = false;
        edible = 10;
        icon = "";
    };
	class erdbeeren {
        variable = "erdbeeren";
        displayName = "STR_Item_Erdbeeren";
        weight = 1;
        buyPrice = 50;
        sellPrice = 35;
        illegal = false;
        edible = 10;
        icon = "";
    };

    class kiwi {
        variable = "kiwi";
        displayName = "STR_Item_Kiwi";
        weight = 1;
        buyPrice = 30;
        sellPrice = 25;
        illegal = false;
        edible = 10;
        icon = "";
    };
	
	 class kirsche {
        variable = "kirsche";
        displayName = "STR_Item_Kirsche";
        weight = 1;
        buyPrice = 68;
        sellPrice = 35;
        illegal = false;
        edible = 10;
        icon = "";
    };
	
	 class gerste {
        variable = "gerste";
        displayName = "STR_Item_Gerste";
        weight = 2;
        buyPrice = -1;
        sellPrice = 10;
        illegal = false;
        edible = 10;
        icon = "";
    };

    class hopfen {
        variable = "hopfen";
        displayName = "STR_Item_Hopfen";
        weight = 2;
        buyPrice = -1;
        sellPrice = 10;
        illegal = false;
        edible = 10;
        icon = "";
    };
	
	 class weizen {
        variable = "weizen";
        displayName = "STR_Item_Weizen";
        weight = 1;
        buyPrice = -1;
        sellPrice = 10;
        illegal = false;
        edible = 10;
        icon = "";
    };

	 class wasser {
        variable = "wasser";
        displayName = "STR_Item_Wasser";
        weight = 3;
        buyPrice = -1;
        sellPrice = 5;
        illegal = false;
        edible = 10;
        icon = "";
    };
	
// andere Sachen
	class gummiu {
		 variable = "gummiu";
		 displayName = "STR_Item_gummiu";
		 weight = 3;
		 buyPrice = -1;
		 sellPrice = 25;
		 illegal = false;
		 edible = -1;
		 icon = "";
	};
	class gummip {
		 variable = "gummip";
		 displayName = "STR_Item_gummip";
		 weight = 2;
		 buyPrice = -1;
		 sellPrice = 750;
		 illegal = false;
		 edible = -1;
		 icon = "";
	};

	class hanf {
        variable = "hanf";
        displayName = "STR_Item_Hanf";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";
		processedItem = "hanffaser";
    };

	class hanffaser {
        variable = "hanffaser";
        displayName = "STR_Item_Hanffaser";
        weight = 2;
        buyPrice = -1;
        sellPrice = 20;
        illegal = false;
        edible = -1;
        icon = "";
    };
	
	class eicheu {
        variable = "eicheu";
        displayName = "STR_Item_Eichenholz";
        weight = 3;
        buyPrice = -1;
        sellPrice = 20;
        illegal = false;
        edible = -1;
        icon = "";

    };
		
	class eichep {
        variable = "eichep";
        displayName = "STR_Item_Eichenholzbretter";
        weight = 2;
        buyPrice = -1;
        sellPrice = 1900;
        illegal = false;
        edible = -1;
        icon = "";
    };
	class tropu {
        variable = "tropu";
        displayName = "STR_Item_Tropenholz";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";

    };
	class tropp {
        variable = "tropp";
        displayName = "STR_Item_Tropenholzbretter";
        weight = 3;
        buyPrice = -1;
        sellPrice = 750;
        illegal = false;
        edible = -1;
        icon = "";
    };
	class wolframu {
        variable = "wolframu";
        displayName = "STR_Item_Wolframu";
        weight = 5;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";

    };
	class wolframp {
        variable = "wolframp";
        displayName = "STR_Item_Wolframp";
        weight = 5;
        buyPrice = -1;
        sellPrice = 1500;
        illegal = false;
        edible = -1;
        icon = "";
    };
	class aluerz {
        variable = "aluerz";
        displayName = "STR_Item_Aluerz";
        weight = 5;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";

    };
	
	class alubarren {
        variable = "alubarren";
        displayName = "STR_Item_Alubarren";
        weight = 4;
        buyPrice = -1;
        sellPrice = 2200;
        illegal = false;
        edible = -1;
        icon = "";
    };
	class kakaobohnen {
        variable = "kakaobohnen";
        displayName = "STR_Item_Kakaobohnen";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";
    };
	class kakaopulver {
        variable = "kakaopulver";
        displayName = "STR_Item_Kakaopulver";
        weight = 2;
        buyPrice = -1;
        sellPrice = 1350;
        illegal = false;
        edible = -1;
        icon = "";
    };
    class oil_unprocessed {
        variable = "oilUnprocessed";
        displayName = "STR_Item_OilU";
        weight = 7;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_oilUnprocessed.paa";
    };

    class oil_processed {
        variable = "oilProcessed";
        displayName = "STR_Item_OilP";
        weight = 6;
        buyPrice = -1;
        sellPrice = 3200;
        illegal = false;
        edible = -1;
        icon = "icons\ico_oilProcessed.paa";
    };

    class copper_unrefined {
        variable = "copper_unrefined";
        displayName = "STR_Item_CopperOre";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";
    };

    class copper_refined {
        variable = "copper_refined";
        displayName = "STR_Item_CopperIngot";
        weight = 3;
        buyPrice = -1;
        sellPrice = 1600;
        illegal = false;
        edible = -1;
        icon = "";
    };

    class iron_unrefined {
        variable = "iron_unrefined";
        displayName = "STR_Item_IronOre";
        weight = 5;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";
    };

    class iron_refined {
        variable = "iron_refined";
        displayName = "STR_Item_IronIngot";
        weight = 3;
        buyPrice = -1;
        sellPrice = 2000;
        illegal = false;
        edible = -1;
        icon = "";
    };

    class salt_unrefined {
        variable = "saltUnrefined";
        displayName = "STR_Item_Salt";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_saltUnprocessed.paa";
    };

    class salt_refined {
        variable = "saltRefined";
        displayName = "STR_Item_SaltR";
        weight = 1;
        buyPrice = -1;
        sellPrice = 1450;
        illegal = false;
        edible = -1;
        icon = "icons\ico_saltProcessed.paa";
    };

    class sand {
        variable = "sand";
        displayName = "STR_Item_Sand";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";
    };

    class glass {
        variable = "glass";
        displayName = "STR_Item_Glass";
        weight = 1;
        buyPrice = -1;
        sellPrice = 1900;
        illegal = false;
        edible = -1;
        icon = "";
    };

    class diamond_uncut {
        variable = "diamondUncut";
        displayName = "STR_Item_DiamondU";
        weight = 5;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_diamondUncut.paa";
    };

    class diamond_cut {
        variable = "diamondCut";
        displayName = "STR_Item_DiamondC";
        weight = 3;
        buyPrice = -1;
        sellPrice = 4950;
        illegal = false;
        edible = -1;
        icon = "icons\ico_diamondCut.paa";
    };

    class rock {
        variable = "rock";
        displayName = "STR_Item_Rock";
        weight = 6;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";
    };

    class cement {
        variable = "cement";
        displayName = "STR_Item_CementBag";
        weight = 5;
        buyPrice = -1;
        sellPrice = 1350;
        illegal = false;
        edible = -1;
        icon = "";

    };
	
	class zinnerz {
        variable = "zinnerz";
        displayName = "STR_Item_Zinnerz";
        weight = 5;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "";
    };
	
	class zinnbarren {
        variable = "zinnbarren";
        displayName = "STR_Item_Zinnbarren";
        weight = 4;
        buyPrice = -1;
        sellPrice = 3100;
        illegal = false;
        edible = -1;
        icon = "";
    };
	

    //Drugs
    class heroin_unprocessed {
        variable = "heroin_unprocessed";
        displayName = "STR_Item_HeroinU";
        weight = 6;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_heroinUnprocessed.paa";
        processedItem = "heroin_processed";
    };

    class heroin_processed {
        variable = "heroin_processed";
        displayName = "STR_Item_HeroinP";
        weight = 4;
        buyPrice = 12500;
        sellPrice = 6000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_heroinProcessed.paa";
    };

    class cannabis {
        variable = "cannabis";
        displayName = "STR_Item_Cannabis";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_cannabis.paa";
        processedItem = "marijuana";
    };

    class marijuana {
        variable = "marijuana";
        displayName = "STR_Item_Marijuana";
        weight = 3;
        buyPrice = 8000;
        sellPrice = 4000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_marijuana.paa";
    };

    class cocaine_unprocessed {
        variable = "cocaine_unprocessed";
        displayName = "STR_Item_CocaineU";
        weight = 6;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_cocaineUnprocessed.paa";
        processedItem = "cocaine_processed";
    };

    class cocaine_processed {
        variable = "cocaine_processed";
        displayName = "STR_Item_CocaineP";
        weight = 4;
        buyPrice = -1;
        sellPrice = 7000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_cocaineProcessed.paa";
    };
	
	class koralle {
        variable = "koralle";
        displayName = "STR_Item_Koralle";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "";
		processedItem = "korallever";
    };
	
	class korallever {
        variable = "korallever";
        displayName = "STR_Item_Korallever";
        weight = 3;
        buyPrice = -1;
        sellPrice = 3000;
        illegal = true;
        edible = 10;
        icon = "";
    };

    //Drink
    class redgull {
        variable = "redgull";
        displayName = "STR_Item_RedGull";
        weight = 1;
        buyPrice = 1500;
        sellPrice = 200;
        illegal = false;
        edible = 100;
        icon = "icons\ico_redgull.paa";
    };

    class coffee {
        variable = "coffee";
        displayName = "STR_Item_Coffee";
        weight = 1;
        buyPrice = 10;
        sellPrice = 5;
        illegal = false;
        edible = 100;
        icon = "icons\ico_coffee.paa";
    };

    class waterBottle {
        variable = "waterBottle";
        displayName = "STR_Item_WaterBottle";
        weight = 1;
        buyPrice = 10;
        sellPrice = 5;
        illegal = false;
        edible = 100;
        icon = "icons\ico_waterBottle.paa";
    };

    //Food
   
		
    class tbacon {
        variable = "tbacon";
        displayName = "STR_Item_TBacon";
        weight = 1;
        buyPrice = 75;
        sellPrice = 25;
        illegal = false;
        edible = 40;
        icon = "icons\ico_tbacon.paa";
    };

    class donuts {
        variable = "donuts";
        displayName = "STR_Item_Donuts";
        weight = 1;
        buyPrice = 120;
        sellPrice = 60;
        illegal = false;
        edible = 30;
        icon = "icons\ico_donuts.paa";
    };

    class rabbit_raw {
        variable = "rabbitRaw";
        displayName = "STR_Item_RabbitRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 95;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class rabbit {
        variable = "rabbit";
        displayName = "STR_Item_Rabbit";
        weight = 1;
        buyPrice = 150;
        sellPrice = 115;
        illegal = false;
        edible = 20;
        icon = "icons\ico_cookedMeat.paa";
    };

    class salema_raw {
        variable = "salemaRaw";
        displayName = "STR_Item_SalemaRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 45;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class salema {
        variable = "salema";
        displayName = "STR_Item_Salema";
        weight = 1;
        buyPrice = 75;
        sellPrice = 55;
        illegal = false;
        edible = 30;
        icon = "icons\ico_cookedMeat.paa";
    };

    class ornate_raw {
        variable = "ornateRaw";
        displayName = "STR_Item_OrnateRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 40;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class ornate {
        variable = "ornate";
        displayName = "STR_Item_Ornate";
        weight = 1;
        buyPrice = 175;
        sellPrice = 150;
        illegal = false;
        edible = 25;
        icon = "icons\ico_cookedMeat.paa";
    };

    class mackerel_raw {
        variable = "mackerelRaw";
        displayName = "STR_Item_MackerelRaw";
        weight = 4;
        buyPrice = -1;
        sellPrice = 175;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class mackerel {
        variable = "mackerel";
        displayName = "STR_Item_Mackerel";
        weight = 2;
        buyPrice = 250;
        sellPrice = 200;
        illegal = false;
        edible = 30;
        icon = "icons\ico_cookedMeat.paa";
    };

    class tuna_raw {
        variable = "tunaRaw";
        displayName = "STR_Item_TunaRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = 700;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class tuna {
        variable = "tuna";
        displayName = "STR_Item_Tuna";
        weight = 3;
        buyPrice = 1250;
        sellPrice = 1000;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedMeat.paa";
    };

    class mullet_raw {
        variable = "mulletRaw";
        displayName = "STR_Item_MulletRaw";
        weight = 4;
        buyPrice = -1;
        sellPrice = 250;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class mullet {
        variable = "mullet";
        displayName = "STR_Item_Mullet";
        weight = 2;
        buyPrice = 600;
        sellPrice = 400;
        illegal = false;
        edible = 80;
        icon = "icons\ico_cookedMeat.paa";
    };

    class catshark_raw {
        variable = "catsharkRaw";
        displayName = "STR_Item_CatSharkRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = 300;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class catshark {
        variable = "catshark";
        displayName = "STR_Item_CatShark";
        weight = 3;
        buyPrice = 750;
        sellPrice = 500;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedMeat.paa";
    };

    class turtle_raw {
        variable = "turtleRaw";
        displayName = "STR_Item_TurtleRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = 3000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class turtle_soup {
        variable = "turtleSoup";
        displayName = "STR_Item_TurtleSoup";
        weight = 2;
        buyPrice = 1000;
        sellPrice = 750;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedMeat.paa";
    };

    class hen_raw {
        variable = "henRaw";
        displayName = "STR_Item_HenRaw";
        weight = 1;
        buyPrice = -1;
        sellPrice = 65;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class hen {
        variable = "hen";
        displayName = "STR_Item_Hen";
        weight = 1;
        buyPrice = 115;
        sellPrice = 85;
        illegal = false;
        edible = 65;
        icon = "icons\ico_cookedMeat.paa";
    };

    class rooster_raw {
        variable = "roosterRaw";
        displayName = "STR_Item_RoosterRaw";
        weight = 1;
        buyPrice = -1;
        sellPrice = 65;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class rooster {
        variable = "rooster";
        displayName = "STR_Item_Rooster";
        weight = 2;
        buyPrice = 90;
        sellPrice = 85;
        illegal = false;
        edible = 45;
        icon = "icons\ico_cookedMeat.paa";
    };

    class sheep_raw {
        variable = "sheepRaw";
        displayName = "STR_Item_SheepRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 95;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class sheep {
        variable = "sheep";
        displayName = "STR_Item_Sheep";
        weight = 2;
        buyPrice = 155;
        sellPrice = 115;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedMeat.paa";
    };

    class goat_raw {
        variable = "goatRaw";
        displayName = "STR_Item_GoatRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 115;
        illegal = false;
        edible = -1;
        icon = "icons\ico_meat.paa";
    };

    class goat {
        variable = "goat";
        displayName = "STR_Item_Goat";
        weight = 2;
        buyPrice = 175;
        sellPrice = 135;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedMeat.paa";
    };
};
