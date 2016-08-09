#include "..\..\script_macros.hpp"
private["_ui","_essensbar","_essensbartext","_durstbar","_durstbartext","_lebensbar","_lebensbartext"];
disableSerialization;

_ui = uiNameSpace getVariable ["playerHUD",displayNull];
if(isNull _ui) then {[] call life_fnc_hudSetup;};

_essensbar = _ui displayCtrl 2200;
_essensbartext = _ui displayCtrl 1000;
_durstbar = _ui displayCtrl 2201;
_durstbartext = _ui displayCtrl 1001;
_lebensbar = _ui displayCtrl 2202;
_lebensbartext = _ui displayCtrl 1002;
_Spielername = _ui displayCtrl 133951;

_essensbar progressSetPosition (1 / (100 / life_hunger));
_durstbar progressSetPosition (1 / (100 / life_thirst));
_lebensbar progressSetPosition (1 - (damage player));

_essensbartext ctrlsetText format["%1", life_hunger];
_durstbartext ctrlsetText format["%1", life_thirst];
_lebensbartext ctrlsetText format["%1", round((1 - (damage player)) * 100)];
/*
_Spielername ctrlSetText format["%1 (%2)", profileName,call life_uid];
_Spielername ctrlCommit 0;*/