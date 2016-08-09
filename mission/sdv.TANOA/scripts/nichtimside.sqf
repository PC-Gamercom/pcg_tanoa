[] spawn {
	disableSerialization;
	0 enableChannel false;
	1 enableChannel false;
	2 enableChannel false;
	7 enableChannel [true, false];
	
	while {true} do {
		waitUntil {sleep 1;((!isNull findDisplay 63) && (!isNull findDisplay 55))};
		if (ctrlText ((findDisplay 55) displayCtrl 101) == "\A3\ui_f\data\igui\rscingameui\rscdisplayvoicechat\microphone_ca.paa") then 
		{
			if(currentChannel == 0) then
			{
				setCurrentChannel 5;
				systemChat ("Im Global Chat wird nicht gesprochen. Du wurdest automatisch in den Direct-Chat gemoved!");
				hint ("Im Global Chat wird nicht gesprochen. Du wurdest automatisch in den Direct-Chat gemoved!");
			};
			
			if(currentChannel == 1) then
			{
				setCurrentChannel 5;
				systemChat ("Im Side Chat wird nicht gesprochen. Du wurdest automatisch in den Direct-Chat gemoved!");
				hint ("Im Side Chat wird nicht gesprochen. Du wurdest automatisch in den Direct-Chat gemoved!");
			};
			
			if(currentChannel == 7) then
			{
				setCurrentChannel 5;
				systemChat ("Im Side Chat wird nicht gesprochen. Du wurdest automatisch in den Direct-Chat gemoved!");
				hint ("Im Side Chat wird nicht gesprochen. Du wurdest automatisch in den Direct-Chat gemoved!");
			};	
		};
		sleep 1;
	};
};