/*
Name: fn_initSafeCode.sqf
Description: Initiates the serverside code to client. 
This prevents rippers from looking into our code. As it is stored on server and transmitted ingame. Never stored in the mission file.
Author: Ciaran Langton
*/


//Function to convert code in a namespace into a final version of it. You need a string with the function name
fnc_compileFinal = {   
    private ["_var","_ns","_code","_arr"];
    _var = [_this,0,"",[""]] call BIS_fnc_param;
    _ns = [_this,1,missionNamespace,[missionNamespace]] call BIS_fnc_param;
    _code = _ns getVariable [_var, 0];
    if (typeName _code != typeName {}) exitWith {false};
    _arr = toArray str _code;
    _arr set [0,32];
    _arr set [count _arr - 1,32];
    _code = compileFinal toString _arr;
    _ns setVariable [_var, _code];
    true
};


fnc_setupFuncs = {
    //So if we wanted to transfer life_fnc_someFunc we would do "someFunc".
    life_publicVarList = ["fuelCheck","fuelConfig","initFuelAction","fuel","diesel","fuelAir","fuelPrices","super","vehicleCheck"];


    if(!isServer) then {
        diag_log "::Life Client:: Loading Secret Code V2.1";


        //Tell player what we are doing on the menu screen.
        cutText["Loading server side functions, please wait","BLACK FADED"];
        {
            //Wait for all our vars to transfer
            waitUntil {!(isNil format["life_fnc_%1",_x]);};
        } forEach life_publicVarList;
    } else {
        {
            //Compile it
            [format["life_fnc_%1",_x]] call fnc_compileFinal;
            //Send it over the net
            publicVariable format["life_fnc_%1",_x];
        } forEach life_publicVarList;
    };
};


//Compile our setupFuncs into a final one. Then broadcast it.
["fnc_setupFuncs"] call fnc_compileFinal;
publicVariable "fnc_setupFuncs";


//Execute the serverside script (Compiles then deploys)
[] spawn fnc_setupFuncs;