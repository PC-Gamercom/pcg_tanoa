/*
	Name: fn_initSafeCode.sqf
	Description: Initiates the serverside code to client. 
	This prevents rippers from looking into our code. As it is stored on server and transmitted ingame. Never stored in the mission file.

	Author: Ciaran Langton
*/
//Function to convert code in a namespace into a final version of it. You need a string with the function name
fnc_compileFinal = {
	private ["_var","_ns","_code","_arr"];
	_var = param [0,"",[""]];
	_ns = param [1,missionNamespace,[missionNamespace]];
	_code = _ns getVariable [_var, 0];
	if (typeName _code != typeName {}) exitWith {false};
	_arr = toArray str _code;
	_arr set [0,32];
	_arr set [count _arr - 1,32];
	_code = compileFinal toString _arr;
	_ns setVariable [_var, _code];
	true
};

fnc_hiddensetupFuncs = {
	//So if we wanted to transfer kbs_fnc_someFunc we would do "someFunc".
	sdv_publicVarList = ["emergencyEject"];

	if(!isServer) then {
	diag_log "::Life Client:: Loading Secret Code V5";
		//Tell player what we are doing on the menu screen.
		cutText["Loading Serverside Scripts, please wait","BLACK FADED"];
		{
			//Wait for all our vars to transfer
			waitUntil {!(isNil format["sdv_fnc_%1",_x]);};
		} forEach sdv_publicVarList;
	} else {
		{
			//Compile it
			[format["sdv_fnc_%1",_x]] call fnc_compileFinal;
			//Send it over the net
			publicVariable format["sdv_fnc_%1",_x];
		} forEach sdv_publicVarList;
	};
};

//Compile our setupFuncs into a final one. Then broadcast it.
["fnc_hiddensetupFuncs"] call fnc_compileFinal;
publicVariable "fnc_hiddensetupFuncs";

//Execute the serverside script (Compiles then deploys)
[] spawn fnc_hiddensetupFuncs;