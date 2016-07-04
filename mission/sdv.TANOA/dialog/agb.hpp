class agb
{
    idd = 32154;
    name = "agb";
    movingEnable = false;
    enableSimulation = false;
    
    class controlsBackground
    {
		class BGha: Life_RscPicture
		{
			idc = 38531;
			text = "textures\bg.jpg";
			x = 0 * safezoneW + safezoneX;
			y = 0 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 1 * safezoneH;
		};
        class RscTitleBackground : Life_RscText
        {
            colorBackground[] = {1,0.537,0,0.7};
            idc = -1;
            text = "Die Serverregeln:";
            x = 0.329844 * safezoneW + safezoneX;
            y = 0.258 * safezoneH + safezoneY;
            w = 0.340312 * safezoneW;
            h = 0.022 * safezoneH;
        };
        
        class RscBackground : Life_RscText
        {
            colorBackground[] = {0, 0, 0, 0.6};
            idc = -1;
            x = 0.329844 * safezoneW + safezoneX;
            y = 0.28 * safezoneH + safezoneY;
            w = 0.340312 * safezoneW;
            h = 0.462 * safezoneH;
        };
		
        class RsclolStatus : Life_RscStructuredText
        {
            idc = -1;
            colorBackground[] = {0, 0, 0, 0};
            sizeEx = 0.0001;
            text = "<t size = '1'>Die kompletten Regeln stehen in unserem Forum.<br/>Um direkt zu den Regeln zu kommen:<br/><a color='#FFB124' href='http://board.pc-gamercom.de'>Hier klicken</a><br/><br/>Tanoa Life Server<br/><t color='#FFB124'>Name:</t> [GER] Staat der Visionäre Life RPG<br/><t color='#FFB124'>IP:</t> 85.25.43.74<br/><t color='#FFB124'>Port:</t> 2302<br/><br/>Direktlinks:<br/><a color='#FFB124' href='ts3server://pc-gamercom.de?port=9999'>Teamspeak:</a> pc-gamercom.de:9999<br/><a color='#FFB124' href='http://pc-gamercom.de'>Homepage:</a> PC-Gamercom.de<br/><br/>Restarts<br/><t color='#FFB124'>6:00, 12:00, 18:00, 24:00 Uhr</t><br/><br/><t color='#FF0000'>Mit dem Spielen auf Staat der Visionäre akzeptieren Sie die Regeln und verpflichten sich diese einzuhalten.</t></t>";
			x = 0.335 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.319687 * safezoneW;
			h = 0.451 * safezoneH;
		};
    };
	
    class Controls
    {
        class naz : Life_RscButtonMenu
        {
            idc = -1;
            text = "Nicht Akzeptieren";
            colorBackground[] = {1,0,0,0.7};
            onButtonClick = "closeDialog 0;";
            x = 0.329844 * safezoneW + safezoneX;
            y = 0.742 * safezoneH + safezoneY;
            w = 0.113437 * safezoneW;
            h = 0.022 * safezoneH;
        };
        
        class az : Life_RscButtonMenu
        {
            idc = -1;
            text = "Akzeptieren";
            colorBackground[] = {0,1,0,0.7};
            onButtonClick = "rulesok = true; closeDialog 0;";
            x = 0.546406 * safezoneW + safezoneX;
            y = 0.742 * safezoneH + safezoneY;
            w = 0.12375 * safezoneW;
            h = 0.022 * safezoneH; 
        };
    };
};