/*#include "..\..\script_macros.hpp"
/*
	File: fn_garageLBChange.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Can't be bothered to answer it.. Already deleted it by accident..

disableSerialization;
private["_control","_index","_className","_classNameLife","_dataArr","_vehicleColor","_vehicleInfo","_trunkSpace","_sellPrice","_retrievePrice"];
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
	" +(localize "STR_Shop_Veh_UI_Fuel")+ " %7
	",
[_retrievePrice] call life_fnc_numberText,
[_sellPrice] call life_fnc_numberText,
SEL(_vehicleInfo,8),
SEL(_vehicleInfo,11),
SEL(_vehicleInfo,10),
if(_trunkSpace == -1) then {"None"} else {_trunkSpace},
SEL(_vehicleInfo,12),
_vehicleColor
];

ctrlShow [2803,true];
ctrlShow [2830,true];
*/

#include "..\..\script_macros.hpp"
/*
 File: fn_garageLBChange.sqf
 Author: Bryan "Tonic" Boardwine
 Description:
 Can't be bothered to answer it.. Already deleted it by accident..
*/
disableSerialization;
private["_control","_index","_className","_classNameLife","_dataArr","_vehicleColor","_vehicleInfo","_trunkSpace","_sellPrice","_retrievePrice","_assurPrice","_assur"];
_control = SEL(_this,0);
_index = SEL(_this,1);
//Fetch some information.
_dataArr = CONTROL_DATAI(_control,_index);
_dataArr = call compile format["%1",_dataArr];
_className = SEL(_dataArr,0);
_classNameLife = _className;
_assur = SEL(_dataArr,2);
if(!isClass (missionConfigFile >> CONFIG_LIFE_VEHICLES >> _classNameLife)) then {
 _classNameLife = "Default"; //Use Default class if it doesn't exist
 diag_log format["%1: LifeCfgVehicles class doesn't exist",_className];
};
_vehicleColor = SEL(SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"textures"),SEL(_dataArr,1)),0);
if(isNil "_vehicleColor") then {_vehicleColor = "Default";};
_vehicleInfo = [_className] call life_fnc_fetchVehInfo;
_trunkSpace = [_className] call life_fnc_vehicleWeightCfg;
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
_assurPrice = switch(playerSide) do {
 case civilian: {SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"assurPrice"),0)};
 case west: {SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"assurPrice"),1)};
 case independent: {SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"assurPrice"),2)};
 case east: {SEL(M_CONFIG(getArray,CONFIG_LIFE_VEHICLES,_classNameLife,"assurPrice"),3)};
};
if(!(EQUAL(typeName _sellPrice,typeName 0)) OR _sellPrice < 1) then {_sellPrice = 1000};
if(!(EQUAL(typeName _retrievePrice,typeName 0)) OR _retrievePrice < 1) then {_retrievePrice = 1000};
if(!(EQUAL(typeName _assurPrice,typeName 0)) OR _assurPrice < 1) then {_assurPrice = 10000};
(CONTROL(2800,2803)) ctrlSetStructuredText parseText format[
 (localize "STR_Shop_Veh_UI_RetrievalP")+ " <t color='#8cff9b'>$%1</t><br/>
 " +(localize "STR_Shop_Veh_UI_SellP")+ " <t color='#8cff9b'>$%2</t><br/>
 Prix de l'assurance: <t color='#8cff9b'>$%9</t><br/>
 Etat de l'assurance: %10<br/>
 " +(localize "STR_Shop_Veh_UI_Color")+ " <t color='#8cff9b'>%8</t><br/>
 " +(localize "STR_Shop_Veh_UI_MaxSpeed")+ " <t color='#8cff9b'>%3 km/h</t><br/>
 " +(localize "STR_Shop_Veh_UI_HPower")+ " <t color='#8cff9b'>%4</t><br/>
 " +(localize "STR_Shop_Veh_UI_PSeats")+ " <t color='#8cff9b'>%5</t><br/>
 " +(localize "STR_Shop_Veh_UI_Trunk")+ " <t color='#8cff9b'>%6</t><br/>
 " +(localize "STR_Shop_Veh_UI_Fuel")+ " <t color='#8cff9b'>%7</t>
 ",
[_retrievePrice] call life_fnc_numberText,
[_sellPrice] call life_fnc_numberText,
SEL(_vehicleInfo,8),
SEL(_vehicleInfo,11),
SEL(_vehicleInfo,10),
if(_trunkSpace == -1) then {"None"} else {_trunkSpace},
SEL(_vehicleInfo,12),
_vehicleColor,
[_assurPrice] call life_fnc_numberText,
if(_assur == 1) then {"<t color='#8cff9b'>Assuré</t>"} else {"<t color='#FF0000'>Pas d'assurance</t>"},
SEL(_vehicleInfo,9)
];
if(_assur == 1) then {
ctrlShow [97480,False];
}else{
ctrlShow [97480,True];
};
ctrlShow [2803,true];
ctrlShow [2830,true];