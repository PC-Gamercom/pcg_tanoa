#include "..\..\script_macros.hpp"
/*
	File: fn_garageLBChange.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Can't be bothered to answer it.. Already deleted it by accident..
*/
disableSerialization;
private["_control","_index","_className","_classNameLife","_dataArr","_vehicleColor","_vehicleInfo","_trunkSpace","_sellPrice","_retrievePrice","_tank"];
_control = SEL(_this,0);
_index = SEL(_this,1);

//Fetch some information.
_dataArr = CONTROL_DATAI(_control,_index);
_dataArr = call compile format["%1",_dataArr];
_className = SEL(_dataArr,0);
_classNameLife = _className;

if(!isClass (missionConfigFile >> CONFIG_LIFE_VEHICLES >> _classNameLife)) then {
	_classNameLife = "Default"; //Use Default class if it doesn't exist
	diag_log format["%1: LifeCfgVehicles class doesn't exist",_className];
};

_vehicleColor = SEL(SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"textures"),SEL(_dataArr,1)),0);
if(isNil "_vehicleColor") then {_vehicleColor = "Default";};

_vehicleInfo = [_className] call life_fnc_fetchVehInfo;
_trunkSpace = [_className] call life_fnc_vehicleWeightCfg;

_tank = _dataArr select 2;
_HitBody = _dataArr select 3;
_HitEngine = _dataArr select 4;
_HitFuel = _dataArr select 5;
_HitLFWheel = _dataArr select 6;
_HitRFWheel = _dataArr select 7;
_HitLF2Wheel = _dataArr select 8;
_HitRF2Wheel = _dataArr select 9;
_HitLMWheel = _dataArr select 10;
_HitRMWheel = _dataArr select 11;
_HitLBWheel = _dataArr select 12;
_HitRBWheel = _dataArr select 13;

_retrievePrice = switch(playerSide) do {
	case civilian: {SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"storageFee"),0)};
	case west: {SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"storageFee"),1)};
	case independent: {SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"storageFee"),2)};
	case east: {SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"storageFee"),3)};
};

_sellPrice = switch(playerSide) do {
	case civilian: {SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"garageSell"),0)};
	case west: {SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"garageSell"),1)};
	case independent: {SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"garageSell"),2)};
	case east: {SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"garageSell"),3)};
};

if(!(EQUAL(typeName _sellPrice,typeName 0)) OR _sellPrice < 1) then {_sellPrice = 1000};
if(!(EQUAL(typeName _retrievePrice,typeName 0)) OR _retrievePrice < 1) then {_retrievePrice = 1000};

(CONTROL(2800,2803)) ctrlSetStructuredText parseText format[
	(localize "STR_Shop_Veh_UI_RetrievalP")+ " <t color='#8cff9b'>$%1</t><br/>
	" +(localize "STR_Shop_Veh_UI_SellP")+ " <t color='#8cff9b'>$%2</t><br/>
	" +(localize "STR_Shop_Veh_UI_Color")+ " %8<br/>
	" +(localize "STR_Shop_Veh_UI_MaxSpeed")+ " %3 km/h<br/>
	" +(localize "STR_Shop_Veh_UI_HPower")+ " %4<br/>
	" +(localize "STR_Shop_Veh_UI_PSeats")+ " %5<br/>
	" +(localize "STR_Shop_Veh_UI_Trunk")+ " %6<br/>
	" +("Tankanzeige:")+ " %9 Prozent<br/>
	" +("Hülle:")+ " %10 Schaden<br/>
	" +("Motor:")+ " %11 Schaden<br/>
    " +("Tank:")+ " %12 Schaden<br/>
	" +("Reifen L. Vorne:")+ " %13 Schaden<br/>
	" +("Reifen R. Vorne:")+ " %14 Schaden<br/>
	" +("Reifen L. Vorne 2:")+ " %15 Schaden<br/>
	" +("Reifen R. Vorne 2::")+ " %16 Schaden<br/>
	" +("Reifen L. Mitte:")+ " %17 Schaden<br/>
	" +("Reifen R. Mitte:")+ " %18 Schaden<br/>
	" +("Reifen L. Hinten:")+ " %19 Schaden<br/>
	" +("Reifen R. Hinten:")+ " %20 Schaden<br/>
	",
[_retrievePrice] call life_fnc_numberText,
[_sellPrice] call life_fnc_numberText,
SEL(_vehicleInfo,8),
SEL(_vehicleInfo,11),
SEL(_vehicleInfo,10),
if(_trunkSpace == -1) then {"None"} else {_trunkSpace},
SEL(_vehicleInfo,12),
_vehicleColor,
_tank * 100,
_HitBody * 100,
_HitEngine * 100,
_HitFuel * 100,
_HitLFWheel * 100,
_HitRFWheel  * 100,
_HitLF2Wheel * 100,
_HitRF2Wheel * 100,
_HitLMWheel  * 100,
_HitRMWheel  * 100,
_HitLBWheel  * 100,
_HitRBWheel  * 100
];

ctrlShow [2803,true];
ctrlShow [2830,true];