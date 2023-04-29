private _grp = _this select 0;
private _basepos = getpos (leader _grp);

while {(count (waypoints _grp)) != 0} do {deleteWaypoint ((waypoints _grp) select 0);};
{_x doFollow leader _grp} foreach units _grp;

private _list = _basePos nearObjects ["House", 125];
private _wpPositions = [];
_list = _list call BIS_fnc_arrayShuffle; // Shuffle the array because nearObjects isn't random
{
    if !(alive _x) then {continue}; // No destroyed buildings
    if (count (_x buildingPos -1) > 0) then {
        // Convert to ASL because precise waypoint placement wants ASL instead of AGL
	    _wpPositions pushBack (AGLtoASL (selectRandom (_x buildingPos -1)));
    };
} forEach _list;

// There aren't enough buildings so we need to add some positions
if (count _wpPositions < 5) then {
    _wpPositions append [
        _basepos getPos [random 150, random 360],
        _basepos getPos [random 150, random 360],
        _basepos getPos [random 150, random 360],
        _basepos getPos [random 150, random 360],
        _basepos getPos [random 150, random 360]
    ];
};

private _waypoint = _grp addWaypoint [_wpPositions select 0, -1];
_waypoint setWaypointType "MOVE";
_waypoint setWaypointBehaviour "SAFE";
_waypoint setWaypointSpeed "LIMITED";
_waypoint setWaypointCombatMode "BLUE";
_waypoint setWaypointCompletionRadius 1;
_waypoint setWaypointTimeout [15, 30, 60];

_waypoint = _grp addWaypoint [_wpPositions select 1, -1];
_waypoint setWaypointType "MOVE";
_waypoint setWaypointBehaviour "SAFE";
_waypoint setWaypointSpeed "LIMITED";
_waypoint setWaypointCombatMode "BLUE";
_waypoint setWaypointCompletionRadius 1;
_waypoint setWaypointTimeout [15, 30, 60];

_waypoint = _grp addWaypoint [_wpPositions select 2, -1];
_waypoint setWaypointType "MOVE";
_waypoint setWaypointBehaviour "SAFE";
_waypoint setWaypointSpeed "LIMITED";
_waypoint setWaypointCombatMode "BLUE";
_waypoint setWaypointCompletionRadius 1;
_waypoint setWaypointTimeout [15, 30, 60];

_waypoint = _grp addWaypoint [_wpPositions select 3, -1];
_waypoint setWaypointType "MOVE";
_waypoint setWaypointBehaviour "SAFE";
_waypoint setWaypointSpeed "LIMITED";
_waypoint setWaypointCombatMode "BLUE";
_waypoint setWaypointCompletionRadius 1;
_waypoint setWaypointTimeout [15, 30, 60];

_waypoint = _grp addWaypoint [_wpPositions select 4, -1];
_waypoint setWaypointType "CYCLE";
_waypoint setWaypointBehaviour "SAFE";
_waypoint setWaypointSpeed "LIMITED";
_waypoint setWaypointCombatMode "BLUE";
_waypoint setWaypointCompletionRadius 1;
_waypoint setWaypointTimeout [15, 30, 60];
