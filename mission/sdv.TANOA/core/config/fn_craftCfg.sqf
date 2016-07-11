#include "..\..\script_macros.hpp"
/*
 File: fn_craftCfg.sqf
 Author: EdgeKiller
 Description:
 Master configuration file for the crafting menu.
*/
private["_craft","_return"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.
switch(_craft) do
{
 case "weapon":
 {
 _return = [
 //[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
 ["hgun_P07_F", ["life_inv_goldbar",2,"life_inv_copper_refined",1]]
 ];
 
 if(FETCH_CONST(life_adminlevel) > 0) then
 {
 _return pushBack
 ["SMG_01_F", ["life_inv_goldbar",6,"life_inv_copper_refined",3,"life_inv_iron_refined",3,"life_inv_diamond_cut",1]];
 };
 };
 case "uniform":
 {
 _return = [
 //[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
 ["U_IG_Guerilla1_1", ["life_inv_goldbar",1]]
 ];
 };
 case "backpack":
 {
 _return = [
 //[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
 ["B_Carryall_oli", ["life_inv_goldbar",1]]
 ];
 };
 case "item":
 {
 _return = [
 //[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
 ["life_inv_pickaxe", ["life_inv_goldbar",1]],
 ["life_inv_goldbar", ["life_inv_goldbar",1,"life_inv_copper_refined",1]]
 ];
 };
};
_return;