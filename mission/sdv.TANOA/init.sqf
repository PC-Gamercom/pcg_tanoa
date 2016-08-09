#include "script_macros.hpp"
StartProgress = false;
[] execVM "KRON_Strings.sqf";
StartProgress = true;

0 enableChannel false;
1 enableChannel false;
2 enableChannel false;


//
west setFriend [independent, 1];
west setFriend [civilian, 1];
civilian setFriend [independent, 1];
independent setFriend [civilian, 1];
setTerrainGrid 35;
setViewDistance 1000;
setObjectViewDistance [800,50];
0 fadeRadio 0;
enableRadio false;
enableSentences false;


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

//Windmühlen net über Netzwerk
{
    hideObject _x;
} foreach (nearestObjects [[8000,8000,0], ["Land_wpp_Turbine_V1_F","Land_wpp_Turbine_V2_F"], 12000]);
//RUHRE IM SIDE
nul=[] execVM "scripts\intlight.sqf";
[] execVM "scripts\nichtimside.sqf";