#include "..\..\script_macros.hpp"
/*
	File: fn_clearVehicleAmmo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Clears the vehicle of ammo types that we don't want.
*/
private["_vehicle","_veh"];
_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //DAFUQ
_veh = typeOf _vehicle;

if(EQUAL(_veh,"B_Boat_Armed_01_minigun_F")) then {
	_vehicle removeMagazinesTurret ["200Rnd_40mm_G_belt",[0]];
};

if(EQUAL(_veh,"B_APC_Wheeled_01_cannon_F")) then  {
	_vehicle removeMagazinesTurret ["60Rnd_40mm_GPR_Tracer_Red_shells",[0]];
	_vehicle removeMagazinesTurret ["40Rnd_40mm_APFSDS_Tracer_Red_shells",[0]];
};

if(EQUAL(_veh,"O_Heli_Attack_02_black_F")) then {
	_vehicle removeMagazinesTurret ["250Rnd_30mm_APDS_shells",[0]];
	_vehicle removeMagazinesTurret ["8Rnd_LG_scalpel",[0]];
	_vehicle removeMagazinesTurret ["38Rnd_80mm_rockets",[0]];
};

if(EQUAL(_veh,"B_Heli_Transport_01_F")) then 
{
	_vehicle removeMagazinesTurret ["2000Rnd_65x39_Belt_Tracer_Red",[1]];
	_vehicle removeMagazinesTurret ["2000Rnd_65x39_Belt_Tracer_Red",[2]];
};
if (_veh isEqualTo "O_T_VTOL_02_vehicle_grey_F") then {
    _vehicle removeMagazinesTurret ["38Rnd_80mm_rockets",[0]];
    _vehicle removeMagazinesTurret ["250Rnd_30mm_APDS_shells_Tracer_Green",[1]];
    _vehicle removeMagazinesTurret ["250Rnd_30mm_APDS_shells",[2]];
	_vehicle removeMagazinesTurret ["250Rnd_30mm_HE_shells_Tracer_Green",[1]];
    _vehicle removeMagazinesTurret ["250Rnd_30mm_HE_shells_Tracer_Green",[2]];
    _vehicle removeMagazinesTurret ["8Rnd_LG_scalpel",[0]];
};
if (_veh isEqualTo "O_T_VTOL_02_infantry_grey_F") then {
    _vehicle removeMagazinesTurret ["250Rnd_30mm_HE_shells_Tracer_Green",[0]];
    _vehicle removeMagazineTurret ["250Rnd_30mm_APDS_shells_Tracer_Green",[0]];
    _vehicle removeMagazineTurret ["8Rnd_LG_scalpel",[0]];
    _vehicle removeMagazineTurret ["38Rnd_80mm_rockets",[0]];
};

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;