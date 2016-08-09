class Life_Cop_Placeables {
	idd = 20000;
    name= "life_cop_placeables";
    movingEnable = false;
    enableSimulation = true;
    onLoad = "";

	class controlsBackground {
		class Life_RscTitleBackground: Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class MainBackground: Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.6;
			h = 0.6 - (22 / 250);
		};
    };
    
	class controls {
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "Available placeables";
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class PlaceablesList : Life_RscListBox {
			idc = 20001;
			text = "";
			sizeEx = 0.035;
			x = 0.12;
			y = 0.26;
			w = 0.56;
			h = 0.370;
		};

		class CloseButtonKey : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.8 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class RemoveAll : life_RscButtonMenu {
			idc = -1;
			text = "Remove all";
			onButtonClick = "[] call life_fnc_placeablesRemoveAll";
			x = 0.1 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.8 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class Place : Life_RscButtonMenu {
			idc = -1;
			text = "Place";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] spawn life_fnc_placeablePlace;";
			x = 0.32;
			y = 0.69;
			w = (6.25 / 40);
			h = (1 / 25);
		};
    };

};
	class Life_Cop_PlaceablesMEDIC {
	idd = 40000;
	name= "life_cop_placeablesMEDIC";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "";

	class controlsBackground {
		class Life_RscTitleBackground: Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};

		class MainBackground: Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.6;
			h = 0.6 - (22 / 250);
		};
	};
	
	class controls {
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "Available placeables";
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};

		class PlaceablesList : Life_RscListBox {
			idc = 40001;
			text = "";
			sizeEx = 0.035;
			x = 0.12;
			y = 0.26;
			w = 0.56;
			h = 0.370;
		};	

		class CloseButtonKey : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.8 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class RemoveAll : life_RscButtonMenu {
			idc = -1;
			text = "Remove all";
			onButtonClick = "[] call life_fnc_placeablesRemoveAllMEDIC";
			x = 0.1 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.8 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class Place : Life_RscButtonMenu {
			idc = -1;
			text = "Place";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] spawn life_fnc_placeablePlaceMEDIC;";
			x = 0.32;
			y = 0.69;
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
	};