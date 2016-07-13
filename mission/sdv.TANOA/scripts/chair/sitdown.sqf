//////////////////////////////////////////////////////////////////////////
//                        	Script Made By                        	//
//                            	MacRae                            	//
//                                                                  	//
//                                                                  	//
//1.Place a Camping Chair on the map.                               	//
//                                                                  	//
//2.Add this to the Camping chair Init:                             	//
//this addAction ["<t color='#0099FF'>Sit Down</t>","Chair\sitdown.sqf"]//
//                          	4D6163526165                        	//
//////////////////////////////////////////////////////////////////////////


_chair = _this select 0; 
_unit = _this select 1; 

[[_unit, "Crew"], "MAC_fnc_switchMove"] spawn BIS_fnc_MP; 
_unit setPos (getPos _chair); 
_unit setDir ((getDir _chair) - 180); 
standup = _unit addaction ["<t color='#0099FF'>Aufstehen</t>","Chair\standup.sqf"];
_unit setpos [getpos _unit select 0, getpos _unit select 1,((getpos _unit select 2) +1)];