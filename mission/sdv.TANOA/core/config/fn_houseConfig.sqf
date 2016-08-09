/*
File: fn_houseConfig.sqf
Author: Bryan "Tonic" Boardwine

Description:
Master config file for buyable houses?
*/
private["_house"];
_house = [_this,0,"",[""]] call BIS_fnc_param;
if (_house isEqualTo "") exitWith {[]};

/*
Return Format:
[price,# of containers allowed]
*/
switch (true) do {
case (_house in ["Land_House_Big_01_F","Land_House_Big_02_F","Land_House_Big_03_F","Land_House_Big_04_F","Land_House_Big_05_F"]): {[600000,5]};
//case (_house in ["Land_House_Native_01","Land_House_Native_02"]): {[5000,1]}; /// Hier sind die Einwohner Hüten ohne Türen
case (_house in ["Land_House_Small_01_F","Land_House_Small_02_F","Land_House_Small_03_F","Land_House_Small_04_F","Land_House_Small_05_F","Land_House_Small_06_F"]): {[50000,2]};
default {[]};
};