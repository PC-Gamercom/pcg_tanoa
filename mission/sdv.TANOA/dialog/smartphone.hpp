class Life_my_smartphone {
	idd = 88888;
	name = "life_my_telephone_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_smartphone;";
	
	class controlsBackground {
	
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.95;
			h = (1 / 25);
		};
		
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.95;
			h = 0.7 - (22 / 250);
		};
		
		class PlayerListTitleBackground:Life_RscText {
			colorBackground[] = {0.588, 0.424, 0.145, 1.0};
			idc = -1;
			x = 0.11;
			y = 0.25;
			w = 0.2;
			h = (1 / 25);
		};
		
		
		class MessageTitleBackground:Life_RscText {
			colorBackground[] = {0.588, 0.424, 0.145, 1.0};
			idc = -1;
			x = 0.325;
			y = 0.25;
			w = 0.7;
			h = (1 / 25);
		};
		
		
		class RandomTitleBackground:Life_RscText {
			colorBackground[] = {0.588, 0.424, 0.145, 1.0};
			idc = -1;
			x = 0.325;
			y = 0.25 + 0.3 + (1 / 25);
			w = 0.7;
			h = (1 / 25);
		};
	};

	class controls {
	
		class MessageTitle : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 88886;
			text = "";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.9)";
			x = 0.325;
			y = 0.25;
			w = 0.7;
			h = (1 / 25);
		};
		
		
		
		class RandomTitle : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 88890;
			text = "$STR_SMARTPHONE_RANDOMTITLE";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.9)";
			x = 0.325;
			y = 0.25 + 0.3 + (1 / 25);
			w = 0.7;
			h = (1 / 25);
		};
		
		
		
		class PlayerList : Life_RscListBox {
			idc = 88881;
			onLBSelChanged = "[2] spawn life_fnc_smartphone;";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			x = 0.11;
			y = 0.25 + (1 / 25);
			w = 0.2;
			h = 0.5;
		};
		
		
		
		class MessageList : Life_RscListNBox {
			idc = 88882;
			onLBSelChanged = "[(lbCurSel 88882)] call life_fnc_showMsg;";
			//sizeEx = 0.04;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			colorBackground[] = {0, 0, 0, 0.0};
			columns[] = {0,0.3};
			x = 0.325;
			y = 0.25 + (1 / 25);
			w = 0.7;
			h = 0.3;
			idcLift = -1;
			idcRight = -1;
			drawSideArrows = 0;
		};
		
		class TextShow : Life_RscControlsGroup {
			x = 0.325;
			y =  0.25 + 0.3 + (1 / 25) + (1 / 25);
			w =  0.7;
			h =  0.15;
			
			class HScrollbar : HScrollbar {
			height = 0;
			};
			
			
			class controls {
			
				class showText : Life_RscStructuredText {
					idc = 88887;
					text = "";
					colorBackground[] = {0.28,0.28,0.28,0.28};
					size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
					shadow = 0;
					x = 0;
					y = 0;
					w = 0.69;//w = 0.7;
					h = 1;//h = 2.15;
				};
			
			};
			
		};
	
		class Schreiben : Life_RscButtonMenu {
		idc = 887892;
		text = "$STR_SMARTPHONE_SCHREIBEN";
		onButtonClick = "[4] call life_fnc_smartphone;";
		colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 1.0};
		x = 0.11;
		y = 0.25 + (1 / 25) + 0.51;
		w = 0.2;
		h = (1 / 25);
		};
	
	
	
		class Title : Life_RscTitle {
		colorBackground[] = {0, 0, 0, 0};
		idc = -1;
		text = "$STR_SMARTPHONE_TITLE";
		sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
		x = 0.1;
		y = 0.2;
		w = 0.95;
		h = (1 / 25);
		};
		
		class PlayerListTitle : Life_RscTitle {
		colorBackground[] = {0, 0, 0, 0};
		idc = -1;
		text = "$STR_SMARTPHONE_PLAYERLISTTITLE";
		sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.9)";
		x = 0.11;
		y = 0.25;
		w = 0.2;
		h = (1 / 25);
		};
		
		class CloseLoadMenu : Life_RscButtonMenu {
		idc = -1;
		text = "$STR_Global_Close";
		onButtonClick = "closeDialog 0;";
		x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
		y = 0.9 - (1 / 25);
		w = (6.25 / 40);
		h = (1 / 25);
		};
	
		class Notruf : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_SMARTPHONE_NOTRUF";
			onButtonClick = "createDialog ""Life_smartphone_notruf"";";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			x = 0.325 + 0.7 - (6.25 / 40);
			y = 0.25 + (1 / 25) + 0.51;
			w = (6.25 / 40);
			h = (1 / 25);
		};
	
	};

};

class Life_smartphone_schreiben{
	idd = 88883;
	name = "life_my_smartphone_schreiben";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "";
	
	class controlsBackground {
	
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.6;
			h = 0.1;
		};
	
	
	};
	
	class controls {
	
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 88886;
			text = "$STR_SMARTPHONE_NACHRICHTTITLE";
			x = 0.1;
			y = 0.2;
			w = 0.95;
			h = (1 / 25);
		};
		
		class Absenden : Life_RscButtonMenu {
			idc = 88885;
			text = "$STR_SMARTPHONE_ABSENDEN";
			onButtonClick = "[1,-1,(ctrlText 88884)] call life_fnc_newMsg;";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 1.0};
			x = 0.6 - (6.25 / 40) + 0.088;
			y = 0.3 + (1 / 25)  - 0.048;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class AdminMsg : life_RscButtonMenu 
		{
			idc = 888897;
			text = "$STR_CELL_AdminMsg";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 1.0};
			onButtonClick = "[5,-1,(ctrlText 88884)] call life_fnc_newMsg;";
			x = 0.6 - (6.25 / 40) - 0.121;
			y = 0.3 + (1 / 25)  - 0.048;
			w = 0.2;
			h = (1 / 25);
		};
		
		class Close : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			x = 0.11;
			y = 0.3 + (1 / 25)  - 0.048;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class textEdit : Life_RscEdit {
			idc = 88884;
			text = "";
			sizeEx = 0.030;
			x = 0.11; y = 0.3 - 0.048;
			w = 0.58; h = 0.03;
		};
		
	};
	
};

class Life_smartphone_notruf {
	idd = 887890;
	name= "life_my_smartphone_notruf";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[6] spawn life_fnc_newMsg;";
	
	class controlsBackground {
	
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.64;
			h = (1 / 25);
		};
		
		
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.64;
			h = 0.15 - (5 / 250);
		};
		
	};
	
	class controls {
	
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 888892;
			text = "$STR_SMARTPHONE_Notruftitle";
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class textEdit : Life_RscEdit {
			idc = 888894;
			text = "";
			sizeEx = 0.030;
			x = 0.11; y = 0.25;
			w = 0.62; h = 0.03;
		};
		
		class TxtCopButton : life_RscButtonMenu 
		{
			idc = 888895;
			text = "$STR_CELL_TextPolice";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[2,-1,(ctrlText 888894)] call life_fnc_newMsg;";
			x = 0.32;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};
		
		class TxtAdminButton : life_RscButtonMenu 
		{
			idc = 888896;
			text = "$STR_CELL_TextAdmins";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[3,-1,(ctrlText 888894)] call life_fnc_newMsg;";
			x = 0.53;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};
		
		class AdminMsgAll : life_RscButtonMenu 
		{
			idc = 888898;
			text = "$STR_CELL_AdminMSGAll";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[7,-1,(ctrlText 888894)] call life_fnc_newMsg;";
			x = 0.53;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};
		
		class EMSReq : life_RscButtonMenu
		{
			idc = 888899;
			text = "$STR_CELL_EMSRequest";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[4,-1,(ctrlText 888894)] call life_fnc_newMsg;";
			x = 0.11;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};
		
		class CloseButton : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.36 + (1 / 50);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
	};
	
};