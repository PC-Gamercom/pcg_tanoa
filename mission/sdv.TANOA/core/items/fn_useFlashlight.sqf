
 //Author: Nox
 //Description: Macht dunkle Sachen hell.

if (vehicle player != player) exitWith { hint "Du kannst deine Schulterlampe nicht einschalten während du in einem Fahrzeug sitzt."};
if (!(life_inv_flashlightshoulder > 0)) exitWith { hint "Du besitzt keine Schulterlampe." };
if (!(alive vehicle player)) exitWith {}; 
 if(life_flashlight) then { 
 deleteVehicle light; 
 deleteVehicle flashlight; 
 life_flashlight = false; 
 } else { 
 flashLight = "Item_acc_flashlight" createVehicleLocal position player; 
 flashlight attachTo [player, [0.33,-0.04,-0.05], "Pelvis"]; 
 flashlight setVectorDirAndUp [ [1,0.01,0.44], [1,0,0] ]; 
 lightpos = [0.33,-0.04,-0.05]; //Position des #lightpoints
 light = "#lightpoint" createVehicleLocal lightpos; 
 light setLightBrightness 0.25; //Helligkeit 
 light setLightAmbient [1,0.99,0.88]; 
 light setLightColor [1,0.99,0.88]; 
 light attachTo [player, [0,5,-0.5], "Pelvis"]; 
 light setDir 60; 
 life_flashlight = true; 
 }; 