private [ "_camera", "_camDistance" ];
_camDistance = 2500;
waitUntil {alive player};


[] spawn {
 _hndl = ppEffectCreate ["colorCorrections", 1501];
 _hndl ppEffectEnable true;
 _hndl ppEffectAdjust 
 [1, // brightness
 1, // contrast 
 -0.01, // offset 
 [1.0, 0.7, 0.0, 0.7], // blend color (R,G,B,A) 
 [1, 1, 1, 1], // colorize color (R,G,B,A) 
 [0, 0, 0, 1] // colorize color (R,G,B,A) 
 ];
 _hndl ppEffectCommit 0;


 sleep 3;


 _hndl ppEffectEnable true;
 _hndl ppEffectAdjust 
 [1, // brightness
 1, // contrast 
 -0.01, // offset 
 [0, 0, 0, 0], // blend color (R,G,B,A) 
 [1, 1, 1, 1], // colorize color (R,G,B,A) 
 [0, 0, 0, 1] // colorize color (R,G,B,A) 
 ];
 _hndl ppEffectCommit 10;
 waitUntil {ppEffectCommitted _hndl};
 ppEffectDestroy _hndl;
};


playSound "welcome";
showCinemaBorder true;
camUseNVG false;


for "_x" from 0 to 20 do {
 _x cutRsc ["Staat der Visionäre","PLAIN"];
};


_camera = "camera" camCreate [(position player select 0)+5, position player select 1,(position player select 2)+_camDistance];
_camera cameraEffect ["internal","back"];
_camera camSetTarget vehicle player;
_camera camSetFOV 1.000;
_camera camCommit 2;
waitUntil {camCommitted _camera};


_camera camSetFOV 4.000;
_camera camSetTarget vehicle player;
_camera camSetRelPos [0,-10,20];
_camera camCommit 5;
waitUntil {camCommitted _camera};


_camera camSetFOV 2.000;


_camera camSetTarget vehicle player;
_camera camSetRelPos [0,-1.5,2];
_camera camCommit 1;
waitUntil {camCommitted _camera};


_camera camSetTarget vehicle player;
_camera camSetRelPos [0,-1,1.85];
_camera camCommit 2;
waitUntil {camCommitted _camera};


_camera camSetTarget vehicle player;
_camera camSetRelPos [0,-0.05,1.85];
_camera camCommit 0.15;
waitUntil {camCommitted _camera};


_camera cameraEffect ["terminate","back"];
camDestroy _camera;


life_introdone = true;