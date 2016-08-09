/*
	File: thwLights.sqf
	Author: mindstorm, modified by snajdan
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow

	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_leftRed","_brightness","_attach"];
if(round diag_fps < 5) exitWith {};
_vehicle = _this select 0;

if (isNil "_vehicle" || isNull _vehicle || !(_vehicle getVariable "lights")) exitWith {};
switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F": {_attach =  [[-0.37, 0.0, 0.56],[0.37, 0.0, 0.56]];};
	case "B_MRAP_01_F": {_attach = [[-0.8, -0.90, 0.6],[0.8, -0.90, 0.6]];};
	case "C_SUV_01_F": {_attach = [[1.1,0.4,-0.05],[-1.1,0.4,-0.05]];};
	case "I_MRAP_03_F": {_attach = [[-1.3, 1.85, -0.08],[1.3, 1.85, -0.08]];};
	case "I_Heli_light_03_unarmed_F": {_attach = [[1.23, 4.7, -1.42],[-1.23, 4.7, -1.42]];};
	case "I_Heli_light_03_F": {	_attach =  [[1.25, 4.6, -1.35],[-1.25, 4.6, -1.35]];};
	case "O_Heli_Light_02_unarmed_F": {	_attach =  [[1, 3.2, -2],[-1, 3.2, -2]];};
	case "B_Heli_Light_01_F": {_attach =  [[-0.75, 1.7, -0.95],[0.75, 1.7, -0.95]];};
	case "C_Heli_Light_01_civil_F": {_attach =  [[-0.75, 1.7, -0.95],[0.75, 1.7, -0.95]];};
	case "I_Heli_Transport_02_F": {	_attach = [[1.3, 6.3, -2.65],[-1.3, 6.3, -2.65]];};
	case "C_Hatchback_01_sport_F": {_attach = [[0.62, 1.87, -0.52],[-0.62, 1.87, -0.52]];};
	case "O_Truck_03_transport_F": {_attach = [[-0.6, 3.4, -0.8],[0.6, 3.4, -0.8]];};
	case "O_Truck_03_covered_F": {_attach =  [[-0.6, 3.4, -0.8],[0.6, 3.4, -0.8]];};
	case "O_Truck_03_ammo_F": {_attach =  [[-0.6, 3.4, -0.8],[0.6, 3.4, -0.8]];};
	case "O_Truck_03_device_F": {_attach =  [[-0.6, 3.4, -0.8],[0.6, 3.4, -0.8]];};
	case "O_Truck_03_fuel_F": {_attach =  [[-0.6, 3.4, -0.8],[0.6, 3.4, -0.8]];};
	case "B_MRAP_01_hmg_F":	{_attach =  [[0.85, -1, 0.05],[-0.85, -1, 0.05]];};
	case "B_MRAP_01_F":	{_attach =  [[0.85, -1, 0.6],[-0.85, -1, 0.6]];};
	case "B_Quadbike_01_F":	{_attach =  [[-0.20, 1, 0.1],[0.40, 1, 0.1]];};
	case "O_Heli_Transport_04_bench_F": {_attach =  [[-0.9, 5.3, 1.7],[0.7, 5.3, 1.7]];};
	case "B_Heli_Transport_03_unarmed_F": {_attach =  [[-1.8, 5.0, 1.9],[1.8, 5.0, 1.9]];};
	case "B_Heli_Transport_03_F": {_attach =  [[-1.8, 5.0, 1.9],[1.8, 5.0, 1.9]];};
	case "I_MRAP_03_hmg_F": {_attach = [[-1.3, 1.85, -0.08],[1.3, 1.85, -0.08]];};
	case "B_Truck_01_mover_F": {_attach = [[-0.8,5,-0.3],[0.8,5,-0.3]];};
	case "B_Truck_01_transport_F": {_attach = [[-0.8,5,-0.3],[0.8,5,-0.3]];};
};
_lightRed = [0.1, 0.1, 20];
_lightBlue = [0.1, 0.1, 20];

_lightleft = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];
uisleep 0.2;
_lightleft setLightColor _lightRed;
_lightleft setLightBrightness 0.2; //0
_lightleft lightAttachObject [_vehicle, _attach select 0];
_lightleft setLightAttenuation [0.0181, 0, 2000, 130];
_lightleft setLightIntensity 10;
_lightleft setLightFlareSize 0.38; // 0.5
_lightleft setLightFlareMaxDistance 150;
_lightleft setLightUseFlare true;
_lightleft setLightDayLight true;

_lightright = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];
uisleep 0.2;
_lightright setLightColor _lightBlue;
_lightright setLightBrightness 0.2;
_lightright setLightAmbient [0.1,0.1,1];
_lightright lightAttachObject [_vehicle, _attach select 1];
_lightright setLightAttenuation [0.0181, 0, 2000, 130];
_lightright setLightIntensity 10;
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 150;
_lightright setLightUseFlare true;

_lightright setLightDayLight true;

if (sunOrMoon < 1) then {
	_brightness = 15;
} else {
	_brightness = 50;
};

_leftRed = true;
while{ (alive _vehicle)} do {
	if(!(_vehicle getVariable "lights")) exitWith {};
	if(round diag_fps < 10) exitWith {};
	if(_leftRed) then
	{
		_leftRed = false;
		_lightright setLightBrightness 0;
		uisleep 0.05;
		_lightleft setLightBrightness _brightness;
	}
		else
	{
		_leftRed = true;
		_lightleft setLightBrightness 0;
		uisleep 0.05;
		_lightright setLightBrightness _brightness;
	};
	uisleep 0.22;
};
deleteVehicle _lightleft;
deleteVehicle _lightright;