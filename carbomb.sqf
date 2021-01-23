// A simple carbomb script by Sacha Ligthert <sacha@lowtac.nl>

if (!isServer) exitWith{};

_veh = _this select 0;
_tgt = _this select 1;


waitUntil { count (crew _veh) >= 1 };

_modi = 0;
_baseModi = 0.3;
_box = 0 boundingBoxReal _veh;
_boxMin = _box select 0;
_boxOuter = _box select 1;
_randomXYZ = floor(random 3);
_randomMinMax = floor(random 2);
_static = ((_box select _randomMinMax) select _randomXYZ);
_pos = [(random[(_boxMin select 0) + _baseModi,0,(_boxOuter select 0) - _baseModi]),
(random[(_boxMin select 1) + _baseModi,0,(_boxOuter select 1) - _baseModi]),
(random[(_boxMin select 2) + _baseModi,0,(_boxOuter select 2) - _baseModi])];
if(_static > 0) then {_modi = _baseModi * -1} else { _modi = _baseModi};
_pos set[_randomXYZ, (_static + _modi)];
_bomb = "SatchelCharge_Remote_Ammo" createVehicle [0,0,0];
_bomb attachTo [_veh, _pos];

sleep 30;

waitUntil {((_veh distance (getMarkerPos _tgt)) <= 5) };


if ( (!canMove _veh) or (_veh distance (getMarkerPos _tgt) <= 5 ) ) then {
	_bomb setDamage 1;
};