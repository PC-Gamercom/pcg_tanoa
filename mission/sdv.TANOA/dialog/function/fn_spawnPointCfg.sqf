/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
//Spawn-Anpassen an Tanoa Polizei
	case west:
	{
		_return = [
			["KAT_COP_01","Katkoula Flughafen HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["KAT_COP_02","Katkoula HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["GEO_COP_01","Georgtown HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["TUVA_COP_1","Tuvanaka Airbase","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["SGA_COP_01","Saint-George-Airbase","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["AIRP_COP_01","Airport Tanoa","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
	 //Spawn-Anpassen an Tanoa Zivil
		_return = [
			["KAT_01","Katkoula","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["GEO_01","Georgtown","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["LUG_01","Luganville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["TUVA_01","Tuvanaka","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["BALA_01","Balavu","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["MOD_01","Moddergat","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		if(license_civ_rebel && playerSide == civilian) then {
        _return = [
			["REB_01","Rebellen-Insel","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["KAT_01","Katkoula","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["GEO_01","Georgtown","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["LUG_01","Luganville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["TUVA_01","Tuvanaka","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["BALA_01","Balavu","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["MOD_01","Moddergat","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		
		];
		};
		
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};
		
	};
	
	case independent: {
		_return = [
			["KAT_FW_01","Katkoula","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["GEO_FW_01","Georgtown","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["TUV_FW_01","Tuvanaka Airbase","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["SGA_FW_01","Saint-Georg Flugfeld","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["ADT_FW_01","Airport de Tanoa","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;