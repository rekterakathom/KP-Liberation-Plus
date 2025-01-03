/*
    File: fn_getOpforSpawnPointAA.sqf
    Author: KP Liberation Dev Team
    Date: 2020-09-29
    Last Update: 2020-09-29
    License: MIT License - http://www.opensource.org/licenses/MIT
    Description:
        Gets a random opfor spawn point marker name respecting following conditions:
        * Wasn't used already in the current session (server restart to server restart)
        * Distance to blufor FOBs and sectors is more than given min distance
        * Distance to blufor FOBs and sectors is less than given max distance
        * Distance to an opfor sector is less than 2000m (to avoid strange spawn in blufor territory)
        * If nearest is set to true, the valid spawn point which is nearest to any blufor sector/FOB is returned
        * If a position is given, the closest valid spawn point to that position is returned
    Parameter(s):
        _min        - Minimum distance to any blufor sector or FOB                      [NUMBER, defaults to 1500]
        _max        - Maximum distance to any blufor sector or FOB                      [NUMBER, defaults to 100000]
        _nearest    - Provide the nearest spawn point of valid points                   [BOOL, defaults to false]
        _pos        - Position if the nearest spawn point to this should be selected    [POSITION, defaults to [0, 0, 0]]
    Returns:
        Opfor spawn point for AA turret[STRING]
*/

params [
    ["_min", 1500, [0]],
    ["_max", 100000, [0]],
    ["_nearest", false, [false]],
    ["_pos", [0, 0, 0], [[]], [2, 3]]
];

private _possibleSpawns = [];

// Only check for opfor spawn points which aren't used already in the current session
private _sectorsToCheck = sectors_opfor;
if (!isNil "KPLIB_usedPositionsAA") then {
    _sectorsToCheck = sectors_opfor - KPLIB_usedPositionsAA;
};

private ["_valid", "_current", "_distances"];
{
    _valid = true;
    _current = _x;

	// Fetch distances to FOBs
	_distances = (GRLIB_all_fobs apply {(markerPos _current) distance2d _x}) select {_x < _max};

	// Fetch distances to blufor sectors
	_distances append ((blufor_sectors apply {(markerPos _current) distance2d (markerPos _x)}) select {_x < _max});

	// Invalid, if all sectors and FOBs are further away than given max distance
	if (_distances isEqualTo []) then {
		_valid = false;
	} else {
		// Invalid, if one sector or FOB is closer than min distance
		_distances sort true;
		if ((_distances select 0) < _min) then {
			_valid = false;
		};
	};

    // Make sure that there is an opfor sector in sensible range to spawn
    if (_valid) then {
        if ((sectors_allSectors - blufor_sectors) findIf {((markerPos _current) distance2D (markerPos _x)) < 2000} < 0) then {
            _valid = false;
        };
    };

    // Make sure that there is no blufor unit inside min dist to spawn
    if (_valid) then {
        if (([markerpos _current, _min, GRLIB_side_friendly] call KPLIB_fnc_getUnitsCount) > 0) then {
            _valid = false;
        };
    };

    // Add distance and marker name to possible spawn, if still valid
    if (_valid) then {
        _possibleSpawns pushBack [_distances select 0, _current];
    };
} forEach _sectorsToCheck;

// Return empty string, if no possible spawn point was found
if (_possibleSpawns isEqualTo []) exitWith {["No opfor AA spawn point found", "WARNING"] call KPLIB_fnc_log; ""};

// Return nearest spawn point to a blufor sector/FOB, if selected via parameter
if (_nearest) exitWith {
    _possibleSpawns sort true;
    (_possibleSpawns select 0) select 1
};

// Return nearest spawn point to given position, if provided
if !(_pos isEqualTo [0, 0, 0]) exitWith {
    ([_possibleSpawns apply {_x select 1}, [_pos] , {_input0 distance (markerPos _x)} , "ASCEND"] call BIS_fnc_sortBy) select 0
};

// Return random spawn point
(selectRandom _possibleSpawns) select 1
