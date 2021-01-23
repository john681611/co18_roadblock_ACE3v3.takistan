// By Sacha Ligthert <sacha@lowtac.nl>

// Convert an array of units with some numbers to some group
sl_fnc_compileGroup = {

	private["_array","_units","_count","_i"];

	_units = _this select 0;
	_count = _this select 1;

	_array = [];

	for "_i" from 1 to _count do {
		_array set [(count _array), (_units call BIS_fnc_selectRandom)];
	};

	_array;

};


// Create waypoints depending on type
sl_fnc_createWaypoints = {

	private ["_grp","_type","_bp1","_bp2","_bp3","_bp4"];

	_grp = _this select 0;
	_type = _this select 1;

	if ( _type == "MOVE" or  _type == "SUPRISE" ) then {
		_bp1 = _grp addWaypoint [getmarkerpos "slowdown", 10];
		_bp1 setWaypointType "MOVE";
		_bp1 setWaypointSpeed "FULL";
		_bp1 setWaypointBehaviour "CARELESS";
		_bp1 setWaypointFormation "LINE";
		_bp1 setWaypointStatements ["!triggerActivated q2", ""];

		_q2 = _grp addWaypoint [getmarkerpos "Q2", 10];
		_q2 setWaypointType "MOVE";
		_q2 setWaypointSpeed "LIMITED";
		_q2 setWaypointBehaviour "CARELESS";
		_q2 setWaypointFormation "LINE";
		_q2 setWaypointStatements ["!triggerActivated q1", ""];

		_q1 = _grp addWaypoint [getmarkerpos "Q1", 10];
		_q1 setWaypointType "MOVE";
		_q1 setWaypointSpeed "LIMITED";
		_q1 setWaypointBehaviour "CARELESS";
		_q1 setWaypointFormation "LINE";
		_q1 setWaypointStatements ["!triggerActivated q0", ""];

		if ( _type == "SUPRISE" ) then {
			_bp3 = _grp addWaypoint [getmarkerpos "stop", 3];
			_bp3 setWaypointType "GETOUT";
			_bp3 setWaypointSpeed "NORMAL";
			_bp3 setWaypointBehaviour "COMBAT";
			_bp3 setWaypointFormation "LINE";

			_bp4 = _grp addWaypoint [getmarkerpos "stop", 3];
			_bp4 setWaypointType "SAD";
			_bp4 setWaypointSpeed "NORMAL";
			_bp4 setWaypointBehaviour "COMBAT";
			_bp4 setWaypointFormation "LINE";
		} else {
			_bp2 = _grp addWaypoint [getmarkerpos "stop", 3];
			_bp2 setWaypointType "MOVE";
			_bp2 setWaypointSpeed "LIMITED";
			_bp2 setWaypointBehaviour "CARELESS";
			_bp2 setWaypointFormation "LINE";
			_bp2 setWaypointStatements ["RBD_CLEAR == 1", ""];

			_bp3 = _grp addWaypoint [getmarkerpos "moveup", 3];
			_bp3 setWaypointType "MOVE";
			_bp3 setWaypointSpeed "LIMITED";
			_bp3 setWaypointBehaviour "CARELESS";
			_bp3 setWaypointFormation "LINE";

			_bp4 = _grp addWaypoint [getmarkerpos "dest", 3];
			_bp4 setWaypointType "MOVE";
			_bp4 setWaypointSpeed "NORMAL";
			_bp4 setWaypointBehaviour "CARELESS";
			_bp4 setWaypointFormation "LINE";
		};
	};

	if ( _type == "ATTACK" ) then {

		_bp1 = _grp addWaypoint [getmarkerpos "assault", 1];
		_bp1 setWaypointType "MOVE";
		_bp1 setWaypointSpeed "FULL";
		_bp1 setWaypointBehaviour "COMBAT";
		_bp1 setWaypointFormation "LINE";

		_bp2 = _grp addWaypoint [getmarkerpos "stop", 1];
		_bp2 setWaypointType "SAD";
		_bp2 setWaypointSpeed "FULL";
		_bp2 setWaypointBehaviour "COMBAT";
		_bp2 setWaypointFormation "LINE";
	};

	if ( _type == "RACE" ) then {
		_bp1 = _grp addWaypoint [getmarkerpos "dest", 1];
		_bp1 setWaypointType "MOVE";
		_bp1 setWaypointSpeed "FULL";
		_bp1 setWaypointBehaviour "CARELESS";
		_bp1 setWaypointFormation "LINE";
	};

	if ( _type == "UNLOAD" ) then {
		_bp1 = _grp addWaypoint [getmarkerpos "assault", 1];
		_bp1 setWaypointType "UNLOAD";
		_bp1 setWaypointSpeed "FULL";
		_bp1 setWaypointBehaviour "COMBAT";
		_bp1 setWaypointFormation "LINE";

		_bp2 = _grp addWaypoint [getmarkerpos "stop", 3];
		_bp2 setWaypointType "SAD";
		_bp2 setWaypointSpeed "NORMAL";
		_bp2 setWaypointBehaviour "COMBAT";
		_bp2 setWaypointFormation "LINE";
	};

};