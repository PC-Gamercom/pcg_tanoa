#include "..\..\script_macros.hpp"
/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName"];
_mine = "";

switch (true) do {
	case (player distance (getMarkerPos "copper_mine") < 30): {_mine = ["copper_unrefined",2];};
	case (player distance (getMarkerPos "zinn_mine") < 40) : {_mine = ["zinnerz",1];};
	case (player distance (getMarkerPos "alu_mine") < 45) : {_mine = ["aluerz",2];};
	case (player distance (getMarkerPos "wolfram_mine") < 50): {_mine = ["wolframu",1];};
	case (player distance (getMarkerPos "eisen_mine") < 50): {_mine = ["iron_unrefined",1];};
	case (player distance (getMarkerPos "hanf_plan_01") < 40) : {_mine = ["hanf",2];};
	case (player distance (getMarkerPos "rock_quarry") < 30): {_mine = ["rock",2];};
	case (player distance (getMarkerPos "diamond_mine") < 30): {_mine = ["diamond_uncut",2];};
	case (player distance (getMarkerPos "sand_mine") < 30) : {_mine = ["sand",2];};
	
	default {""};
};

//Mine check

if(EQUAL(_mine,"")) exitWith {hint localize "STR_ISTR_Pick_NotNear"};

while{true} do {
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};
if(life_interrupted) exitWith {life_interrupted = false;};
_diff = [SEL(_mine,0),SEL(_mine,1),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(EQUAL(_diff,0)) exitWith {hint localize "STR_NOTF_InvFull"};

life_action_inUse = true;
for "_i" from 0 to 2 do {
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,SEL(_mine,0),_diff] call life_fnc_handleInv)) then {
	_itemName = M_CONFIG(getText,"VirtualItems",SEL(_mine,0),"displayName");
	titleText[format[localize "STR_ISTR_Pick_Success",(localize _itemName),_diff],"PLAIN"];
};
};
life_action_inUse = false;