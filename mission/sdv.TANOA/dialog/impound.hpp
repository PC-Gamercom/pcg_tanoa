class Life_impound_menu
{
 idd = 2800;
 name="life_vehicle_shop";
 movingEnabled = 0;
 enableSimulation = 1;
 onLoad = "ctrlShow [2330,false];";
 
 class controlsBackground {
	 class garage_Header: Life_RscText
	 {
	 idc = -1;
	 text = "Garage";
	 x = 0.04375 * safezoneW + safezoneX;
	 y = 0.182252 * safezoneH + safezoneY;
	 w = 0.582812 * safezoneW;
	 h = 0.030555 * safezoneH;
	 ColorBackground[] = {0,0,0,1};
	 ColorText[] = {1,1,1,1};
	 font = TahomaB;
	 SizeEx = 0.035;
	 };
	 
	 class background_info: Life_RscText
	 {
	 idc = -1;
	 text = "";
	 x = 0.363020 * safezoneW + safezoneX;
	 y = 0.219752 * safezoneH + safezoneY;
	 w = 0.263541 * safezoneW;
	 h = 0.614814 * safezoneH;
	 ColorBackground[] = {0,0,0,0.705882};
	 ColorText[] = {1,1,1,1};
	 font = TahomaB;
	 SizeEx = 0.035;
	 };
	 class CloseBtn : Life_RscButtonMenu
	 {
	 idc = -1;
	 text = "X";
	 onButtonClick = "closeDialog 0;";
	 x = 0.043229 * safezoneW + safezoneX;
	 y = 0.797530 * safezoneH + safezoneY;
	 w = 0.057291 * safezoneW;
	 h = 0.037037 * safezoneH;
	 ColorBackground[] = {0,0,0,0.627450};
	 ColorText[] = {1,1,1,1};
	 font = TahomaB;
	 SizeEx = 0.4;
	 colorFocused[] = {0,0,0,1};
	 colorDisabled[] = {0,0,0,1};
	 };
	 class RentCar : Life_RscButtonMenu
	 {
	 idc = -1;
	 text = "$STR_Global_Retrieve";
	 onButtonClick = "[] call life_fnc_unimpound;";
	 x = 0.103645 * safezoneW + safezoneX;
	 y = 0.797530 * safezoneH + safezoneY;
	 w = 0.125 * safezoneW;
	 h = 0.037037 * safezoneH;
	 ColorBackground[] = {0,0,0,0.627450};
	 ColorText[] = {1,1,1,1};
	 font = TahomaB;
	 SizeEx = 0.4;
	 colorFocused[] = {0,0,0,1};
	 colorDisabled[] = {0,0,0,1};
	 };
	 class BuyCar : life_RscButtonMenu
	 {
	 idc = -1;
	 text = "$STR_Global_Sell";
	 onButtonClick = "[] call life_fnc_sellGarage;";
	 x = 0.232812 * safezoneW + safezoneX;
	 y = 0.797530 * safezoneH + safezoneY;
	 w = 0.125 * safezoneW;
	 h = 0.037037 * safezoneH;
	 ColorBackground[] = {0,0,0,0.627450};
	 ColorText[] = {1,1,1,1};
	 font = TahomaB;
	 SizeEx = 0.4;
	 colorFocused[] = {0,0,0,1};
	 colorDisabled[] = {0,0,0,1};
	 };
	 };
	 class controls
	 {
	 class VehicleList : Life_RscListBox
	 {
	 idc = 2802;
	 text = "";
	 onLBSelChanged = "_this call life_fnc_garageLBChange;";
	 x = 0.04375 * safezoneW + safezoneX;
	 y = 0.219752 * safezoneH + safezoneY;
	 w = 0.314062 * safezoneW;
	 h = 0.572222 * safezoneH;
	 ColorBackground[] = {0,0,0,0.705882};
	 ColorText[] = {1,1,1,1};
	 font = TahomaB;
	 SizeEx = 0.035;
	 colorSelectBackground[] = {0,0,0,1};
	 colorSelect[] = {0,0,0,1};
	 };
	 class vehicleInfomationList : Life_RscStructuredText
	 {
	 idc = 2803;
	 text = "";
	 x = 0.363020 * safezoneW + safezoneX;
	 y = 0.219752 * safezoneH + safezoneY;
	 w = 0.263541 * safezoneW;
	 h = 0.614814 * safezoneH;
	 ColorBackground[] = {0,0,0,0.705882};
	 ColorText[] = {1,1,1,1};
	 font = TahomaB;
	 SizeEx = 0.4;
	 };
   };
};