// // // // // // // // // //
// Interior Light script
// Version 1.651
// Date: 2014.11.11
// Authors: Lala14, Tajin
// // // // // // // // // //
// init line:
// nul=[] execVM "IntLight.sqf";
/*Definable*/
IL_Debug = false; //Enable Debug Mode
IL_Balls = false; //Show the attach points (requires Debug mode)
IL_Crew_Only = false; //Only allow Pilot/Driver/Co-Pilot/Gunner/Commander (does not include left & right gunners for choppers) to change the light
IL_Red_On_Always = true; //When true, when light is turned off then on the light will be reset to red else it will never be reset if false
IL_Action_Night = false; //Only allow the action to come up during the Dark times
/*End Definable*/
/*Start Script*/
IL_Loaded = false;
if (isDedicated) exitWith {};
waitUntil {!isNull player};
systemChat "Interior Lighting: Loading";
diag_log "IL starting";
// Farbe in RGB Decimal:
IL_c_white = [255,255,255];
IL_c_red = [255,0,0];
IL_c_green = [0,255,0];
IL_c_blue = [0,0,255];
IL_c_yellow = [255,200,0];
IL_c_orange = [255,75,0];
// predefined default values used in the config below
IL_attenuation = [0.3,0,0,500];
IL_att_soft = [0,10,10,10];
IL_att_tiny = [0,0,0,0,0.2,0.4];
IL_intensity = 50;
// To make all lights brighter or darker, simply adjust the following multiplier.
IL_intensity_mult = 1;
diag_log "IL config loading";
// config ["kindOf classnames","First person only",[["position in modelspace","lightcolor","attentuation","intensity"],[..],"Allow Colour Change",(optional - if not present but there is 2 it will change it) which lights to be able to change to green *first to number* ] ]
if (isnil "IL_config") then { IL_config = [] };
IL_config = IL_config + [
 [["Heli_Light_01_base_F"], false, [
 [ [0,1,0.5], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["Heli_Light_02_base_F"], false, [
 [ [0,1.7,-0.1], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["Heli_Transport_01_base_F"], false, [
 [ [0,2,0], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["I_Heli_light_03_unarmed_base_F","I_Heli_light_03_base_F","I_Heli_light_03_F","I_Heli_light_03_unarmed_F"], false, [
 [ [0,2.5,0.5], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["Heli_Transport_02_base_F"], false, [
 [ [0,1.5,-0.4], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["B_Heli_Transport_03_base_F"], false, [
 [ [0,-2,0.3], IL_c_red, IL_att_soft, 0.5 ],
 [ [0,4,0.3], IL_c_red, IL_att_soft, 0.5 ]
 ],true,2],
 [["O_Heli_Transport_04_covered_F","O_Heli_Transport_04_medevac_F"],false, [
 [ [0.2,-1.95,-0.1], IL_c_red, IL_att_soft, 0.5 ],
 [ [-0.4,-1.95,-0.1], IL_c_red, IL_att_soft, 0.5 ],
 [ [0.2,0.93,-0.1], IL_c_red, IL_att_soft, 0.5 ],
 [ [-0.4,0.93,-0.1], IL_c_red, IL_att_soft, 0.5 ],
 [ [-0.13,3.13,0.35], IL_c_red, IL_att_soft, 0.5 ]
 ],true,5],
 [["Land_Pod_Heli_Transport_04_covered_F","Land_Pod_Heli_Transport_04_medevac_F"],false, [
 [ [0.3,-0.86,0.5], IL_c_red, IL_att_soft, 0.5 ],
 [ [-0.3,-0.86,0.5], IL_c_red, IL_att_soft, 0.5 ],
 [ [0.3,2.02,0.5], IL_c_red, IL_att_soft, 0.5 ],
 [ [-0.3,2.02,0.5], IL_c_red, IL_att_soft, 0.5 ]
 ],true,4],
 [["Heli_Transport_04_base_F"],false, [
 [ [-0.13,3.13,0.1], IL_c_red, IL_att_soft, 0.5 ]
 ],true],
 [["Heli_Attack_01_base_F"], false, [
 [ [-0.04,4.3,-0.3], IL_c_green, [0,0,0,0,0.2,0.4], 0.05 ],
 [ [-0.04,2.89,0.15], IL_c_green, [0,0,0,0,0.2,0.4], 0.05 ]
 ],false],
 [["Heli_Attack_02_base_F"], false, [
 [ [0,1.5,-1.5], IL_c_red, IL_attenuation, 5 ],
 [ [0,0.5,-1.5], IL_c_red, IL_attenuation, 5 ],
 [ [0.07,3.4,-0.05], IL_c_green, [0,0,0,0,0.2,0.4], 0.05 ],
 [ [0,4.4,-0.3], IL_c_green, [0,0,0,0,0.2,0.4], 0.05 ]
 ],true,2],
 [["c130J_base"], false, [
 [ [0,6,-2], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["kyo_MH47E_base"], false, [
 [ [0,2,-0.07], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["globemaster_c17"], false, [
 [ [0,8,2.44], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["APC_Wheeled_01_base_F"], true, [
 [ [0,-3,-0.4], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["APC_Wheeled_02_base_F"], true, [
 [ [0.3,-2.7,-0.2], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["APC_Wheeled_03_base_F"], true, [
 [ [0.5,-2.6,-0.7], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["MBT_01_base_F"], true, [
 [ [0,-2.7,-0.9], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["APC_Tracked_01_base_F"], true, [
 [ [0,-2.4,-0.7], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["APC_Tracked_02_base_F"], true, [
 [ [0,-3.1,-0.6], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["APC_Tracked_03_base_F"], true, [
 [ [0,-2,-0.6], IL_c_red, IL_attenuation, IL_intensity ]
 ],true],
 [["B_Truck_01_mover_F"],false, [
 [ [0,3.6,0.71], IL_c_orange, IL_att_soft, 10]
 ], false],
 [["B_Truck_01_covered_F","B_Truck_01_medical_F"], false, [
 [ [0,0,1], IL_c_orange, IL_att_soft, 10 ],
 [ [0,4,0.42], IL_c_orange, IL_att_soft, 10]
 ],false],
 [["B_Truck_01_transport_F","Truck_01_base_F"], false, [
 [ [0,4,0.42], IL_c_orange, IL_att_soft, 10]
 ],false],
 [["O_Truck_03_covered_F","O_Truck_03_medical_F"], false, [
 [ [0,-2,1.2], IL_c_orange, IL_att_soft, 10 ],
 [ [0,2.7,0.85], IL_c_orange, IL_att_soft, 10]
 ],false],
 [["Truck_03_base_F"], false, [
 [ [0,2.7,0.85], IL_c_orange, IL_att_soft, 10]
 ],false],
 [["I_Truck_02_covered_F","I_Truck_02_medical_F","O_Truck_02_covered_F","O_Truck_02_medical_F"], false, [
 [ [0,-0.5,0.89], IL_c_orange, IL_att_soft, 10 ],
 [ [0,1.5,0.41], IL_c_orange, IL_att_soft, 10]
 ],false],
 [["I_Truck_02_box_F","I_Truck_02_fuel_F","I_Truck_02_ammo_F","O_Truck_02_box_F","O_Truck_02_fuel_F","O_Truck_02_ammo_F"], false,[
 [ [0,1.5,0.41], IL_c_orange, IL_att_soft, 10]
 ],false],
 [["Truck_02_base_F"], false,[
 [ [0,3,0.41], IL_c_orange, IL_att_soft, 10]
 ],false],
 [["MRAP_01_base_F"], false, [
 [ [0,-2.3,0.3], IL_c_orange, IL_att_soft, 0.5]
 ],false],
 [["MRAP_02_base_F"], false, [
 [ [0,0,1], IL_c_orange, IL_att_soft, 0.5 ]
 ],false],
 [["MRAP_03_base_F"], false, [
 [ [0,0,0.3], IL_c_orange, IL_att_soft, 0.5 ]
 ],false],
 [["Offroad_01_base_F"], false, [
 [ [0,0,0.3], IL_c_orange, IL_att_soft, 0.5 ]
 ],false],
 [["SUV_01_base_F"], false, [
 [ [0,-0.7,0], IL_c_orange, IL_att_soft, 0.5 ]
 ],false],
 [["VAN_01_base_F"], false, [
 [ [0,0,0.6], IL_c_orange, IL_att_soft, 0.5 ]
 ],false],
 [["Hatchback_01_base_F"], false, [
 [ [0,0,0.3], IL_c_orange, IL_att_soft, 0.5 ]
 ],false],
 [["UH60_Base"], false, [
 [ [0,1.5,-0.7], IL_c_red, IL_att_soft, 0.5 ]
 ],true],
 [["UH1H_base"], false, [
 [ [0,0.7,-0.25], IL_c_red, IL_att_soft, 0.5 ]
 ],true],
 [["UH1_Base"], false, [
 [ [0,0,-0.1], IL_c_red, IL_att_soft, 0.5 ]
 ],true],
 [["CH_47F_base"], false, [
 [ [0,-2,-1], IL_c_red, IL_att_soft, 0.5 ],
 [ [0,3,-0.83], IL_c_red, IL_att_soft, 0.5 ]
 ],true,2]
];
// Der Config Array kann modifieziert werden, ohne das gesamte Script umzubearbeiten.
diag_log "IL config done";
// vars
IL_typelist = [];
IL_lights = [];
IL_varname = "interiorlight";
IL_text_ON = "<t color='#FF0000'>Innenlicht AN</t>";
IL_text_OFF = "<t color='#FF0000'>Innenlicht AUS</t>";
IL_Green_Text = "<t color='#00FF00'>Zu Gruen wechseln</t>";
IL_Red_Text = "<t color='#FF0000'>Zu Rot wechseln</t>";
IL_action = -1;
IL_lastchange = 0;
// Funktion
IL_fnc_inList = {
 _found = false;
 _index = -1;
 {
 _types = _x select 0;
 {
 if (_this isKindOf _x) exitWith { _found = true; };
 } forEach _types;
 if _found exitWith {_index = _forEachIndex;};
 } forEach IL_config;
 _index
};
IL_fnc_returnTurretUnits = {
 _peeps = [];
 _turrets = allTurrets [_this,false];
 {
 if (!isNull (_this turretUnit _x)) then {_peeps pushBack (_this turretUnit _x)};
 }forEach _turrets;
 _peeps;
};
IL_fnc_addAction = {
 if (IL_action > -1) then {
 player removeAction IL_action;
 if (IL_Debug) then {player sideChat 'action removed'};
 };
 IL_action = player addAction [
 IL_text_ON,
 "
 _veh = vehicle player;
 _ison = _veh getVariable [IL_varname,false];
 if (_ison) then {
 _veh setVariable[IL_varname,false,true];
 } else {
 _veh setVariable[IL_varname,true,true];
 }
 ",
 "",
 0.999,
 false,
 false,
 "",
 "
 _veh = vehicle player;
 _show = false;
 if ( (_veh != player) ) then {
 _vehtype = typeOf _veh;
 _i = _veh call IL_fnc_inList;
 if (_i > -1) then {
 _show = true;
 _ison = _veh getVariable [IL_varname,false];
 if (_ison) then {
 player setUserActionText[IL_action,IL_text_OFF];
 if ( (cameraView != 'INTERNAL') && ((IL_config select _i) select 1) ) then {
 if (IL_Debug) then {player sideChat 'Lights being removed because in third person'};
 if (count IL_lights > 0) then {
 {
 IL_lights = IL_lights - [_x];
 deleteVehicle _x;
 } forEach IL_lights;
 };
 } else {
 _lights = (IL_config select _i) select 2;
 _timestamp = _veh getVariable ['IL_timestamp',IL_lastchange];
 if (count IL_lights == 0) then {
 if (IL_Debug) then {player sideChat 'lights added, hint displayed for the array'; hintSilent str _lights;};
 {
 _light = '#lightpoint' createVehicleLocal [0,0,0];
 _light attachTo [_veh,(_x select 0)];
 _light setLightColor (_x select 1);
 _light setLightAttenuation (_x select 2);
 _light setLightIntensity (_x select 3) * IL_intensity_mult;
 if (IL_Debug && IL_Balls) then {
 if (isNil {_veh getVariable 'il_balls'}) then {
 _ball = 'Sign_Sphere10cm_F' createVehicle [0,0,0];
 _ball attachTo [_veh,(_x select 0)];
 _veh setVariable ['il_balls',[_ball],true];
 } else {
 _ball = 'Sign_Sphere10cm_F' createVehicle [0,0,0];
 _ball attachTo [_veh,(_x select 0)];
 _veh setVariable ['il_balls',(_veh getVariable 'il_balls') + [_ball],true];
 };
 };
 IL_lights pushBack _light;
 IL_lastchange = 0;
 } forEach _lights;
 };
 if (_timestamp != IL_lastchange) then {
 _override = _veh getVariable ['IL_override',_lights];
 if (IL_Debug) then {player sideChat format ['light colour changed',str _override];};
 {
 _o = _override select _forEachIndex;
 _x attachTo [_veh,(_o select 0)];
 _x setLightColor (_o select 1);
 _x setLightAttenuation (_o select 2);
 _x setLightIntensity (_o select 3) * IL_intensity_mult;
 } forEach IL_lights;
 IL_lastchange = _timestamp;
 };
 };
 } else {
 if (IL_Red_On_Always) then { _veh setVariable ['IL_override',nil,true]; };
 player setUserActionText[IL_action,IL_text_ON];
 if (count IL_lights > 0) then {
 if (IL_Debug) then {player sideChat format ['removing lights because lights are off %1',str IL_lights];};
 {
 IL_lights = IL_lights - [_x];
 deleteVehicle _x;
 } forEach IL_lights;
 if ((IL_Debug) && (IL_Balls) && !(isNil {_veh getVariable 'il_balls'})) then {
 {
 deleteVehicle _x;
 } forEach (_veh getVariable 'il_balls');
 _veh setVariable ['il_balls',nil,true];
 if (IL_Debug) then {player sideChat format ['removing balls because lights are off %1',str IL_lights];};
 };
 };
 };
 };
 } else {
 if (count IL_lights > 0) then {
 if (IL_Debug) then {player sideChat format ['removing lights because you are not in a vehicle %1',str IL_lights];};
 {
 IL_lights = IL_lights - [_x];
 deleteVehicle _x;
 } forEach IL_lights;
 };
 };
 if (IL_Crew_Only) then { _show = (_show && ((_this == driver _target) OR (_this == gunner _target) OR (_this == commander _target) OR (_this in (vehicle _target call IL_fnc_returnTurretUnits)))) };
 if (IL_Action_Night && sunOrMoon == 1) then { _show = (_show && (vehicle _target getVariable [IL_varname,false] )) };
 _show
 "];
 if (IL_Debug) then {player sideChat 'action added'};
 if (IL_action2 > -1) then {
 player removeAction IL_action2;
 if (IL_Debug) then {player sideChat 'action2 removed'};
 };
 IL_action2 = player addAction [
 IL_Green_Text,
 "
 _veh = vehicle player;
 _i = _veh call IL_fnc_inList;
 _lights = + (IL_config select _i) select 2;
 _lighter = _lights select 0;
 _lightamount = (IL_config select _i) select 4;
 if (isNil {_veh getVariable 'IL_override'}) then {
 _lighter set [1,IL_c_green];
 if (count _lights > 1 && isNil {_lightamount}) then {
 _lighters = _lights select 1;
 _lighters set [1,IL_c_green];
 _lights set [1,_lighters];
 };
 if (!isNil {_lightamount}) then {
 {
 _x set [1,IL_c_green];
 _lights set [_forEachIndex,_x];
 }forEach _lights;
 };
 _lights set [0,_lighter];
 _veh setVariable ['IL_override',_lights,true];
 _veh setVariable ['IL_timestamp',time,true];
 } else {
 _veh setVariable ['IL_override',nil,true];
 _veh setVariable ['IL_timestamp',time,true];
 };
 ",
 "",
 0.99,
 false,
 false,
 "",
 "
 _veh = vehicle player;
 _i = _veh call IL_fnc_inList;
 _show = false;
 if (!(isNil {_veh getVariable 'IL_override'}) && (IL_c_green in ((_veh getVariable 'IL_override') select 0))) then { player setUserActionText[IL_action2,IL_Red_Text];};
 if (isNil {_veh getVariable 'IL_override'}) then { player setUserActionText[IL_action2,IL_Green_Text];};
 if ((_veh != player) && (_i > -1)) then { _show = ((_i > -1) && ((IL_config select _i) select 3)) };
 if (IL_Crew_Only) then { _show = (_show && ((_this == driver _target) OR (_this == gunner _target) OR (_this == commander _target) OR (_this in (vehicle _target call IL_fnc_returnTurretUnits)))) };
 _veh getVariable [IL_varname,false] &&
 _show
 "];
 if (IL_Debug) then {player sideChat 'action2 added'};
 if (IL_Debug && IL_Crew_Only) then {player sideChat "IL_Crew_Only Active"};
 if (IL_Debug && IL_Red_On_Always) then {player sideChat "IL_Red_On_Always Active"};
};
diag_log "IL func loaded";
// init
[] spawn IL_fnc_addAction;
player addEventHandler ["Respawn", {
 [] spawn IL_fnc_addAction;
}];
IL_Loaded = true;
diag_log "IL ready";
systemChat "Interior Lighting: Initialized";