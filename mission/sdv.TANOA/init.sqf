
#include "script_macros.hpp"
StartProgress = false;

[] execVM "KRON_Strings.sqf";
[] execVM "scripts\fn_statusBar.sqf";
[] execVM "randomDDPos.sqf";
StartProgress = true;

0 enableChannel false;
1 enableChannel false;
2 enableChannel false;

[] spawn {
	while{true} do {
		sleep 10;
		0 setFog 0;
		sleep 590;
	};
};

MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
    
};