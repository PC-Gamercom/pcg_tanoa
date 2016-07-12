
if (isServer) then {
	private["_marker","_dealer","_posLast","_smoke1","_mkrs","_markerNew","_timerRdm","_timerFix","_timer","_pos","_posdir","_smoke2","_curDealerPos","_txt"];
	_marker = "dealer_17";
	_dealer = dealer;

	removeUniform _dealer;
	removeHeadgear _dealer;
	removeVest _dealer;
	removeBackpack _dealer;
	_dealer forceaddUniform "U_BG_Guerilla2_1";
	_dealer addBackpack "B_AssaultPack_blk";
	_dealer addVest "V_TacVestIR_blk";
	_dealer addHeadgear "H_Cap_blk";
	_dealer addWeapon "arifle_MX_Black_F";

	while {_this == dealer} do
	{
		_posLast = getMarkerPos _marker;
		_smoke1 = "SmokeShell" createVehicle _posLast;
		
		_mkrs = ["dealer_0","dealer_1","dealer_2","dealer_3"];
		_markerNew = _mkrs call BIS_fnc_selectRandom;	
			while {_markerNew == _marker} do {
				_markerNew = _mkrs call BIS_fnc_selectRandom;
			};
		_marker = _markerNew;
	
		_timerRdm = floor(random 41)*60;
		_timerFix = 30*60;
		_timer = _timerRdm + _timerFix;
		
			_pos = getMarkerPos _marker;
			_posdir = markerDir _marker;

/*			
		_this enableSimulation true;
		sleep 0.5;
		[[_this,"Acts_AidlPercMstpSlowWrflDnon_pissing"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		sleep 0.5;
*/
sleep 1;

		_smoke2 = "SmokeShell" createVehicle _pos;

sleep 8;

		sleep 1;
			
			_this setPos _pos;
		
		"dealerMarker" setMarkerPos _pos;
		sleep 1;
		
			_this setDir _posdir;
		
		sleep 1;
		
			_this setDir _posdir;
			
		sleep 5;
		deletevehicle _smoke1;
		deletevehicle _smoke2;

		_curDealerPos = mapGridPosition _this;
		[[0,format["Der Drogendealer wird %1 min an seiner aktuellen Position bei %2 bleiben.", str(round(_timer/60)), _curDealerPos]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

		_txt = "<t size='1.75'>DROGENDEALER</t><br/>";
		_txt = _txt + "<t size='1.45'>Verbleibenen Zeit:</t><br/>";
		_txt = _txt + format ["<t color='#FF0000'><t size='1.35'>%1 min</t></t><br/>", str(round(_timer/60))];
		_txt = _txt + "<t size='1.25'>Position:</t><br/>";
		_txt = _txt + format ["<t color='#FF0000'><t size='1.15'>%1</t></t><br/><br/>", _curDealerPos];
		_txt = _txt + format ["Der Drogendealer wird %1 min an seiner aktuellen Position bei %2 bleiben.", str(round(_timer/60)), _curDealerPos];

		[[3,_txt],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

		sleep _timer;
	};
};