#include "..\..\script_macros.hpp"
disableSerialization;
private["_control","_index","_className","_classNameLife","_dataArr","_vehicleColor","_vehicleInfo","_trunkSpace","_sellPrice","_retrievePrice"];
_control = SEL(_this,0);
_index = SEL(_this,1);
//Fetch some information.
_dataArr = CONTROL_DATAI(_control,_index);
_dataArr = call compile format["%1",_dataArr];
_className = SEL(_dataArr,0);
_classNameLife = _className;
_vehicleInfo = [_className] call life_fnc_fetchVehInfo;
_retrievePrice = M_CONFIG(getNumber,CONFIG_LIFE_VEHICLES,_classNameLife,"impound");
if(!(EQUAL(typeName _retrievePrice,typeName 0)) OR _retrievePrice < 1) then {_retrievePrice = 1000};
(CONTROL(28000,28030)) ctrlSetStructuredText parseText format[
 (localize "STR_Shop_IMPVEH")+ " <t color='#8cff9b'>$%1</t><br/>
 ",
[_retrievePrice] call life_fnc_numberText];
ctrlShow [28030,true];
ctrlShow [28300,true];