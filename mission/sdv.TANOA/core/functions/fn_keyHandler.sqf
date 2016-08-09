#include "..\..\script_macros.hpp"
/*
*	File: fn_keyHandler.sqf
*	Author: Bryan "Tonic" Boardwine
*
*	Description:
*	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys"];
_ctrl = SEL(_this,0);
_code = SEL(_this,1);
_shift = SEL(_this,2);
_ctrlKey = SEL(_this,3);
_alt = SEL(_this,4);
_speed = speed cursorTarget;
_handled = false;

_interactionKey = if((EQUAL(count (actionKeys "User10"),0))) then {219} else {(actionKeys "User10") select 0};
_mapKey = SEL(actionKeys "ShowMap",0);
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D
private _greetingsKey = if(count (actionKeys "User1") == 0) then {157} else {(actionKeys "User9") select 0};
//Vault handling...
private _forbiddenKnast = (actionKeys "GetOver") + (actionKeys "Turbo") + (actionKeys "Crouch") + (actionKeys "Prone");
private _forbiddenFestnahme = _forbiddenKnast + (actionKeys "ReloadMagazine") + (actionKeys "Salute") + (actionKeys "SitDown") + (actionKeys "Throw");

if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute") || _code in (actionKeys "SitDown") || _code in (actionKeys "Throw") || _code in (actionKeys "GetIn") || _code in (actionKeys "GetOut") || _code in (actionKeys "Fire") || _code in (actionKeys "ReloadMagazine") || _code in [16,18]) && ((player GVAR ["restrained",false]) || (player GVAR ["playerSurrender",false]) || life_isknocked || life_istazed)) exitWith {
	true;
};
if(life_is_arrested && {_code in _forbiddenKnast}) exitWith {
	hint "Typen wie dich mögen wir hier nicht. Du weißt schon, Buguser, Exploiter und anderes assoziales Gesindel. Solange du im Knast bist, bleib locker und sitz deine Zeit wie ein MANN ab."
};
if (_code in (actionKeys "TacticalView")) then
{
	hint "Taktische Ansicht ist hier nicht..." ;
	_handled = true;
};
if(player getVariable["restrained",false] && {_code in _forbiddenFestnahme}) then {
	systemChat "Hände wie Houdini? Der Computer sagt NEIN!";
	_handled = true;
};
if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(!(EQUAL(count (actionKeys "User10"),0)) && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn {
			private "_handle";
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};




switch (_code) do {


if (life_barrier_active) then {
	case 77: {
			[] spawn life_fnc_placeablesPlaceComplete;
	};
	true;
};
	//Space key for Jumping
	case 57: {
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {!(EQUAL(animationState player,"AovrPercMrunSrasWrflDf"))} && {isTouchingGround player} && {EQUAL(stance player,"STAND")} && {speed player > 2.5} && {!life_is_arrested} && {SEL((velocity player),2) < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[player,false] remoteExec ["life_fnc_jumpFnc",RANY]; //Global execution
			_handled = true;
		};
	};

	//Surrender (Shift + B)
	case 48: {
		if(_shift) then {
			if(player GVAR ["playerSurrender",false]) then {
				player SVAR ["playerSurrender",false,true];
			} else {
				[] spawn life_fnc_surrender;
			};
			_handled = true;
		};
	};

	//Map Key
	case _mapKey: {
		switch (playerSide) do {
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
			case civilian: {if(!visibleMap) then {[] spawn life_fnc_civMarkers;}};
		};
	};

	//Holster / recall weapon. (Shift + H)
	case 35: {
		if(_shift && !_ctrlKey && !(EQUAL(currentWeapon player,""))) then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchCamera cameraView;
		};

		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {!(EQUAL(life_curWep_h,""))}) then {
			if(life_curWep_h in [RIFLE,LAUNCHER,PISTOL]) then {
				player selectWeapon life_curWep_h;
			};
		};
	};

	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey: {
		if(!life_action_inUse) then {
			[] spawn  {
				private "_handle";
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
	//Q Key (Pickaxe)
	case 16:{
		if((!life_action_gather) && (vehicle player == player)) then
        {
        	if(life_inv_pickaxe > 0) then
            {
            	[] spawn life_fnc_pickAxeUse;
        	};
        };

	};
	


	//Bau MEnü


	//Restraining (Shift + R)
	case 19: {
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && {!isNull cursorTarget} && {cursorTarget isKindOf "Man"} && {(isPlayer cursorTarget)} && {(side cursorTarget in [civilian,independent])} && {alive cursorTarget} && {cursorTarget distance player < 3.5} && {!(cursorTarget GVAR "Escorting")} && {!(cursorTarget GVAR "restrained")} && {speed cursorTarget < 1}) then {
			[] call life_fnc_restrainAction;
		};
	};

	//Knock out, this is experimental and yeah... (Shift + G)
	case 34: {
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then {
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player GVAR ["restrained",false]) && !life_istazed && !life_isknocked) then {
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
		};
	};

	//T Key (Trunk)
	case 20: {
		if(!_alt && !_ctrlKey && !dialog && {!life_action_inUse}) then {
			if(vehicle player != player && alive vehicle player) then {
				if((vehicle player) in life_vehicles) then {
					[vehicle player] call life_fnc_openInventory;
				};
			} else {
				private "_list";
				_containers = [getPosATL player, ["Box_IND_Grenades_F","B_supplyCrate_F"], 2.5] call life_fnc_nearestObjects;
				if (count _containers > 0) then {
					_container = _containers select 0;
					[_container] call life_fnc_openInventory;
				} else {
					_list = ["landVehicle","Air","Ship"];
					if(KINDOF_ARRAY(cursorTarget,_list) && {player distance cursorTarget < 7} && {vehicle player == player} && {alive cursorTarget} && {!life_action_inUse}) then {
						if(cursorTarget in life_vehicles) then {
							[cursorTarget] call life_fnc_openInventory;
						};
					};
				};
			};
		};
	};

	//L Key?
	case 38: {
		//If cop run checks for turning lights on.
		if(_shift && playerSide in [west,independent]) then {
			if(vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F","I_MRAP_03_F","I_Heli_light_03_unarmed_F","I_Heli_light_03_F","O_Heli_Light_02_unarmed_F","B_Heli_Light_01_F","C_Heli_Light_01_civil_F","I_Heli_Transport_02_F","C_Hatchback_01_sport_F","B_MRAP_01_hmg_F","B_Quadbike_01_F","O_Heli_Transport_04_bench_F","B_Heli_Transport_03_unarmed_F","I_MRAP_03_hmg_F","B_Heli_Transport_03_F"]) then {
				if(!isNil {vehicle player GVAR "lights"}) then {
					if(playerSide == west) then {
						[vehicle player] call life_fnc_sirenLights;
					} else {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					_handled = true;
				};
			};
		};

		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
		 if (_shift && vehicle player == player && playerside in [civilian,west,independent]) then {
				[vehicle player] call life_fnc_useFlashlight;
	};
	};
	//Z Player Menu
	case 21: {
		if(!_alt && !_ctrlKey && !dialog && !(player GVAR ["restrained",false]) && {!life_action_inUse}) then {
			[] call life_fnc_p_openMenu;
		};
		if(playerSide in [west]) then {
				[player] call life_fnc_copUniform;
			};
		if(playerSide in [independent]) then {
				[player] call life_fnc_medicUniform;
			};
	    if(playerSide in [civilian]) then {
				[player] call life_fnc_playerSkins;
			};
	};

	//F Key
	case 33: {
		if(playerSide in [west,independent] && {vehicle player != player} && {!life_siren_active} && {((driver vehicle player) == player)}) then {
			[] spawn {
				life_siren_active = true;
				sleep 4.7;
				life_siren_active = false;
			};

			_veh = vehicle player;
			if(isNil {_veh GVAR "siren"}) then {_veh SVAR ["siren",false,true];};
			if((_veh GVAR "siren")) then {
				titleText [localize "STR_MISC_SirensOFF","PLAIN"];
				_veh SVAR ["siren",false,true];
			} else {
				titleText [localize "STR_MISC_SirensON","PLAIN"];
				_veh SVAR ["siren",true,true];
				if(playerSide == west) then {
					[_veh] remoteExec ["life_fnc_copSiren",RCLIENT];
				} else {
					[_veh] remoteExec ["life_fnc_medicSiren",RCLIENT];
				};
			};
		};
	};

	//O Key
	case 24: {
			if(_shift) then {
			_handled = true;
			if (playerside in [west,civilian,independent]) then {
				switch (player getVariable["SDV_Earplugs",0]) do {
					case 0: {titleText ["Ear Plugs 90%", "PLAIN"]; 1 fadeSound 0.1; player setVariable ["SDV_Earplugs",10];};
					case 10: {titleText ["Ear Plugs 60%", "PLAIN"]; 1 fadeSound 0.4; player setVariable ["SDV_Earplugs",40];};
					case 40: {titleText ["Ear Plugs 30%", "PLAIN"]; 1 fadeSound 0.7; player setVariable ["SDV_Earplugs",70];};
					case 70: {titleText ["Ear Plugs entfernt", "PLAIN"]; 1 fadeSound 1; player setVariable ["SDV_Earplugs",0];};
				};
			};
		};
	};
	case _spricht: {
		if(currentChannel == 7) then {
			setCurrentChannel 5;
			hint localize "STR_SDV_DirectChat";
		};
		if(!sdv_is_speaking) then {
			sdv_is_speaking = true;
			if (ctrlText ((findDisplay 55) displayCtrl 101) == "\A3\ui_f\data\igui\rscingameui\rscdisplayvoicechat\microphone_ca.paa") then {
				if ((ctrlText ((findDisplay 63) displayCtrl 101) == localize "str_channel_direct")) then {
					player setVariable["speaking", true, true];
						[] spawn {
							waitUntil {(isNull findDisplay 63) && (isNull findDisplay 55)};
							player setVariable["speaking", false, true];
							sdv_is_speaking = false;
						};
				} else {
					player setVariable["speaking", false, true];
					sdv_is_speaking = false;
				};
			} else {
				player setVariable["speaking", false, true];
				sdv_is_speaking = false;
			};
		};
	};
	
	//O Key Schranken im Auto öffnen
	case 44: {
		if(playerSide in [west,independent,east] && vehicle player != player && ((driver vehicle player) == player)) then {
			[] call life_fnc_Opener;
			};
		if((life_is_arrested) or {(_player GVAR ["restrained",false])}) then {
			_handled = true;
		};
		};

	//U Key
	case 22: {
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = cursorTarget;
			} else {
				_veh = vehicle player;
			};

			if(_veh isKindOf "House_F" && {playerSide == civilian}) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(EQUAL(_door,0)) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh GVAR [format["bis_disabled_Door_%1",_door],0];

					if(EQUAL(_locked,0)) then {
						_veh SVAR [format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					} else {
						_veh SVAR [format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
					};
				};
			} else {
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8) then {
					if(EQUAL(_locked,2)) then {
						if(local _veh) then {
							_veh lock 0;
						} else {
							[_veh,0] remoteExecCall ["life_fnc_lockVehicle",_veh];
						};
						systemChat localize "STR_MISC_VehUnlock";
						/* Sound Code */
						[[_veh],"life_fnc_UnLockCarSound",nil,true] spawn life_fnc_MP;
						/* Sound Code Ende */
					} else {
						if(local _veh) then {
							_veh lock 2;
						} else {
							[_veh,2] remoteExecCall ["life_fnc_lockVehicle",_veh];
						};
						systemChat localize "STR_MISC_VehLock";
						/* Sound Code */
						[[_veh],"life_fnc_LockCarSound",nil,true] spawn life_fnc_MP;
						/* Sound Code Ende */
					};
				};
			};
		};
	};
	
	
		//(Shift + Num 1)
	//Takwondo(Traditional Martial arts in korea)
	case 79: {
		if(_shift) then {_handled = true;};
			if ((_shift) && {!life_is_arrested} && (vehicle player == player)) then {
				cutText [format["Takwondo!!!"], "PLAIN DOWN"];
				player playMove "AmovPercMstpSnonWnonDnon_exerciseKata";
		};
	};
	//(Shift + Num 2)
	//Kneebend Slow
	case 80: {
		if(_shift) then {_handled = true;};
			if ((_shift) && {!life_is_arrested} && (vehicle player == player)) then {
				cutText [format["KneeBend Slow baby~"], "PLAIN DOWN"];
				player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";
			};
	};
	//(Shift + Num 3)
	//Kneebend Fast
	case 81: {
		if(_shift) then {_handled = true;};
			if ((_shift) && {!life_is_arrested} && (vehicle player == player)) then {
				cutText [format["KneeBend more Hard!!!Move!!Move!!"], "PLAIN DOWN"];
				player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";
			};
	};
	//(Shift + Num 4)
	//Pushup
	case 75: {
		if(_shift) then {_handled = true;};
			if ((_shift) && {!life_is_arrested} && (vehicle player == player)) then {
				cutText [format["Pushup!!!!!!"], "PLAIN DOWN"];
				player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
			};
	};
	//(Shift + Num 5)
	case 76: {
		if(_shift) then {_handled = true;};
			if ((_shift) && {!life_is_arrested} && (vehicle player == player)) then {
				cutText [format["Erstmal das Revier markieren"], "PLAIN DOWN"];
				player playMove "Acts_AidlPercMstpSlowWrflDnon_pissing";
			};
	};
	case 83:
    {
        if(playerSide == civilian) then 
        {
            _handled = true;
        };
		if(playerSide == west) then 
        {
            _handled = true;
        };
		if(playerSide == east) then
		{
			_handled = true;
		};
    };
	//HI TAB
	case _greetingsKey : {
        player playActionNow "gestureHi";
    };
};

_handled;
