/*
	File: fn_medicMarkers.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Marks downed players on the map when it's open.
*/
private["_markers","_units","_medics"];
_markers = [];
_markersMedecin = [];
_units = [];
_medics = [];

// waiiit for it
uiSleep 0.3;

if (visibleMap) then {
	// ich sehe tote menschen
	{
		if !(_x getVariable ["Revive", true]) then {
			private _tmp_marker = createMarkerLocal [format["%1_dead_marker", _x], visiblePosition _x];
			_tmp_marker setMarkerColorLocal "ColorRed";
			_tmp_marker setMarkerTypeLocal "loc_Hospital";
			_tmp_marker setMarkerTextLocal format ["Verwundeter: %1", (_x getVariable ["realname", "Unbekannte Person"])];
			_markers pushBack _tmp_marker;
		};
		nil
	} count allDeadMen;

	// fw list
	{
		if ( (side _x isEqualTo independent) && {!(isObjectHidden _x)} ) then {
			_tmp_marker = createMarkerLocal [format["%1_marker", _x], visiblePosition _x];
			_tmp_marker setMarkerColorLocal "ColorGreen";
			_tmp_marker setMarkerTypeLocal "Mil_Dot";
			_tmp_marker setMarkerTextLocal format ["%1", (_x getVariable ["realname", name _x])];
			_markersMedecin pushBack [_tmp_marker, _x];
		};
		nil
	} count playableUnits;

	// loop
	waitUntil {
		{
			_x params ["_marker", "_unit"];
			if !((isNil "_unit") && {!(isNull _unit)}) then {
				_marker setMarkerPosLocal (visiblePosition _unit);
			};
			nil
		} count _markersMedecin;
		uiSleep 0.02;
		!(visibleMap)
	};

	// sauber machen
	{ deleteMarkerLocal _x; nil } count _markers;
	{ deleteMarkerLocal (_x select 0); nil } count _markersMedecin;
};
