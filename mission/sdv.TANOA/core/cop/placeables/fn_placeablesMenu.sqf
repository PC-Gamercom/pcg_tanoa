/* 
	Author: Maximum
	Description: Placeables for the cop\medic sides.
	Disclaimer: Don't be a asshole and pass this off as your own or become a KAI and sell it for profit, Im releasing this for FREE... Credits: Killerty69 for a second pare of eyes when mine got to sleepy
	P.S. - Don't be a faggot like i know some of you all will be.
*/
disableSerialization;

createDialog "life_cop_placeables";
waitUntil { !isNull(findDisplay 20000) };
_display = findDisplay 20000;
_placeables = _display displayCtrl 20001;
lbClear _placeables;

{    
	_name = _x select 0;
    _className = _x select 1;
    _placeables lbAdd _name;
    _placeables lbSetData [(lbSize _placeables) - 1, _className];
} foreach (life_placeables);