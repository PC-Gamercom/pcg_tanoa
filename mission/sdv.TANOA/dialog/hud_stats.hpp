#define INFINITE 1e+1000

class playerHUD {
	idd = -1;
	fadein = 0.5;
	duration = INFINITE;
	fadeout = 0.5;
	name = "playerHUD";
	onLoad = "uiNamespace setVariable ['playerHUD',_this select 0]; [] call life_fnc_hudUpdate;";
	onUnload = "uiNamespace setVariable ['playerHUD',displayNull];";
	objects[] = {};
	movingEnable = 0;
	enableSimulation = 1;
	controls[] = {
		sdv_UI_BACK,
		sdv_BAR_FOOD,
		sdv_BAR_WATER,
		sdv_BAR_HEALTH,
		sdv_PICTURE_FOOD,
		sdv_PICTURE_WATER,
		sdv_PICTURE_HEALTH,
		sdv_FOOD_TEXT,
		sdv_WATER_TEXT,
		sdv_HEALTH_TEXT,
		Spielername/*,
		brotzeit,
		fotze*/
	};

	/* Background */
	class sdv_UI_BACK: life_RscBackground
	{
		colorBackground[] = {0,0,0,0.5};
		x = 0.917656 * safezoneW + safezoneX;
		y = 0.819 * safezoneH + safezoneY;
		w = 0.0825 * safezoneW;
		h = 0.11 * safezoneH;
	};

	/* Progress Bars */
	class sdv_BAR_FOOD: life_RscProgress
	{
		idc = 2200;
		x = 0.938281 * safezoneW + safezoneX;
		y = 0.83 * safezoneH + safezoneY;
		w = 0.061875 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class sdv_BAR_WATER: life_RscProgress
	{
		idc = 2201;
		x = 0.938281 * safezoneW + safezoneX;
		y = 0.863 * safezoneH + safezoneY;
		w = 0.061875 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class sdv_BAR_HEALTH: life_RscProgress
	{
		idc = 2202;
		x = 0.938281 * safezoneW + safezoneX;
		y = 0.896 * safezoneH + safezoneY;
		w = 0.061875 * safezoneW;
		h = 0.022 * safezoneH;
	};

	/* Text */

	class sdv_FOOD_TEXT: life_RscText
	{
		idc = 1000;
		text = "";
		x = 0.958906 * safezoneW + safezoneX;
		y = 0.8344 * safezoneH + safezoneY;
		w = 0.020625 * safezoneW;
		h = 0.011 * safezoneH;
	};
	class sdv_WATER_TEXT: life_RscText
	{
		idc = 1001;
		text = "";
		x = 0.958905 * safezoneW + safezoneX;
		y = 0.8674 * safezoneH + safezoneY;
		w = 0.020625 * safezoneW;
		h = 0.011 * safezoneH;
	};
	class sdv_HEALTH_TEXT: life_RscText
	{
		idc = 1002;
		text = "";
		x = 0.958906 * safezoneW + safezoneX;
		y = 0.9004 * safezoneH + safezoneY;
		w = 0.020625 * safezoneW;
		h = 0.011 * safezoneH;
	};

	/* Icons */
	class sdv_PICTURE_FOOD: life_RscPicture
	{
		idc = 1200;
		text = "icons\food.paa";
		x = 0.922813 * safezoneW + safezoneX;
		y = 0.83 * safezoneH + safezoneY;
		w = 0.03; h = 0.04;
	};
	class sdv_PICTURE_WATER: life_RscPicture
	{
		idc = 1201;
		text = "icons\water.paa";
		x = 0.922813 * safezoneW + safezoneX;
		y = 0.863 * safezoneH + safezoneY;
		w = 0.03; h = 0.04;
	};
	class sdv_PICTURE_HEALTH: life_RscPicture
	{
		idc = 1202;
		text = "icons\health.paa";
		x = 0.922813 * safezoneW + safezoneX;
		y = 0.896 * safezoneH + safezoneY;
		w = 0.03; h = 0.04;
	};/*
	class CombatIcon : life_RscPictureKeepAspect {
		idc = 133950;
		x = "(safeZoneX + safeZoneW) - 60 * (safeZoneWAbs / (getResolution select 0)) - 64 * (safeZoneWAbs / (getResolution select 0))";
		y = "(safeZoneY + safeZoneH) - 720 * (safeZoneH / (getResolution select 1)) - 64 * (safeZoneH / (getResolution select 1))";
		w = "64 * (safeZoneWAbs / (getResolution select 0))";
		h = "64 * (safeZoneH / (getResolution select 1))";
		text = "icons\kampf.paa";
		shadow = false;
		show = "false";
		colorText[] = {1, 1, 1, 1};
		blinkingPeriod = 0.75;
	};*/
	class Spielername {
		type = 0;
		idc = 133951;
		style = 0;
		x = 0.01 * safezoneW + safezoneX;
		y = 0.97 * safezoneH + safezoneY;
		w = 0.35587 * safezoneW;
		h = 0.022 * safezoneH;
		sizeEx = 0.048;
		size = 1;
		font = "EtelkaNarrowMediumPro";
		colorBackground[] = {0,0,0,0};
		colorText[] = {1,1,1, 0.3};
		shadow = true;
		text = "";
	};
};