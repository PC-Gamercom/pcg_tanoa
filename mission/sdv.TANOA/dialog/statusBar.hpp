#define ST_RIGHT 0x01

class osefStatusBarAdmin {
	idd = -1;
	onLoad = "uiNamespace setVariable ['osefStatusBarAdmin', _this select 0]";
	onUnload = "uiNamespace setVariable ['osefStatusBarAdmin', objNull]";
	onDestroy = "uiNamespace setVariable ['osefStatusBarAdmin', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55554;
			x = safezoneX;
			y = safezoneY + safezoneH - 0.053;
			w = safezoneW;
			h = 0.06;
			shadow = false;
			colorBackground[] = { 0.074, 0.082, 0.105, 0.85 };
			font = "PuristaMedium";
			size = 0.032;
			type = 13;
			style = 2;
			colorText[] = {1, 1, 1, 1};
			text="Carregando Barra de Status,aguarde.";
			class Attributes {
				align="center";
				color = "#ffffff";
				font = "PuristaMedium";
			};
		};
	};
};

class osefStatusBar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['osefStatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['osefStatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['osefStatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55555;
			x = safezoneX + safezoneW - 1.50;
			y = safezoneY + safezoneH - 0.035;
			w = 1.3;
			h = 0.07;
			shadow = false;
			font = "PuristaMedium";
			size = 0.032;
			type = 13;
			style = 2;
			colorText[] = {1, 1, 1, 1};
			text="";
			class Attributes {
				align="left";
			};
		};
	};
};
