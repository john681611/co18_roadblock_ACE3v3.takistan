private ["_vehicles_civs","_vehicles_ins_weapons","_vehicles_ins_truck","_insurgents","_civilians","_veh_of_choice","_weapons","_magazines","_numberOfCrewUnits","_numberofCargoUnits","_grp","_veh","_units","_chance","_action","_bodyCount","_wait","_round","_ieds","_bomb"];

_vehicles_civs = [
	"UK3CB_TKC_C_Ikarus",
	"UK3CB_TKC_C_Hilux_Civ_Open",
	"UK3CB_TKC_C_Datsun_Civ_Closed",
	"UK3CB_TKC_C_Kamaz_Covered",
	"UK3CB_TKC_C_Datsun_Civ_Open",
	"UK3CB_TKC_C_Kamaz_Fuel",
	"UK3CB_TKC_C_Hatchback",
	"UK3CB_TKC_C_Kamaz_Open",
	"UK3CB_TKC_C_Hilux_Civ_Closed",
	"UK3CB_TKC_C_Kamaz_Repair",
	"UK3CB_TKC_C_Lada",
	"UK3CB_TKC_C_V3S_Reammo",
	"UK3CB_TKC_C_V3S_Open",
	"UK3CB_TKC_C_Lada_Taxi",
	"UK3CB_TKC_C_V3S_Refuel",
	"UK3CB_TKC_C_Sedan",
	"UK3CB_TKC_C_LR_Closed",
	"UK3CB_TKC_C_V3S_Recovery",
	"UK3CB_TKC_C_Skoda",
	"UK3CB_TKC_C_LR_Open",
	"UK3CB_TKC_C_V3S_Repair",
	"UK3CB_TKC_C_Old_Bike",
	"UK3CB_TKC_C_V3S_Closed",
	"UK3CB_TKC_C_S1203",
	"UK3CB_TKC_C_Tractor_Old",
	"UK3CB_TKC_C_S1203_Amb",
	"UK3CB_TKC_C_TT650",
	"UK3CB_TKC_C_SUV",
	"UK3CB_TKC_C_SUV_Armoured",
	"UK3CB_TKC_C_Tractor",
	"UK3CB_TKC_C_UAZ_Closed",
	"UK3CB_TKC_C_UAZ_Open",
	"UK3CB_TKC_C_Ural",
	"UK3CB_TKC_C_Ural_Fuel",
	"UK3CB_TKC_C_Ural_Open",
	"UK3CB_TKC_C_Ural_Ammo",
	"UK3CB_TKC_C_Ural_Empty",
	"UK3CB_TKC_C_Ural_Recovery",
	"UK3CB_TKC_C_Ural_Repair",
	"UK3CB_TKC_C_Gaz24",
	"UK3CB_TKC_C_Golf",
	"UK3CB_TKC_C_YAVA"
	];
_vehicles_ins_weapons = [
	"UK3CB_TKM_O_Datsun_Open",
	"UK3CB_TKM_O_Datsun_Pkm",
	"UK3CB_TKM_O_Hilux_GMG",
	"UK3CB_TKM_O_Hilux_Rocket_Arty",
	"UK3CB_TKM_O_Hilux_Dshkm",
	"UK3CB_TKM_O_Hilux_Open",
	"UK3CB_TKM_O_Hilux_Pkm",
	"UK3CB_TKM_O_Hilux_Rocket",
	"UK3CB_TKM_O_Hilux_Spg9",
	"UK3CB_TKM_O_Hilux_Zu23",
	"UK3CB_TKM_O_LR_Closed",
	"UK3CB_TKM_O_LR_AGS30",
	"UK3CB_TKM_O_LR_M2",
	"UK3CB_TKM_O_LR_Open",
	"UK3CB_TKM_O_LR_SPG9",
	"UK3CB_TKM_O_LR_SF_AGS30",
	"UK3CB_TKM_O_LR_SF_M2",
	"UK3CB_TKM_O_Old_Bike",
	"UK3CB_TKM_O_V3S_Reammo",
	"UK3CB_TKM_O_V3S_Refuel",
	"UK3CB_TKM_O_V3S_Recovery",
	"UK3CB_TKM_O_V3S_Repair",
	"UK3CB_TKM_O_TT650",
	"UK3CB_TKM_O_UAZ_AGS30",
	"UK3CB_TKM_O_UAZ_Closed",
	"UK3CB_TKM_O_UAZ_Dshkm",
	"UK3CB_TKM_O_UAZ_Open",
	"UK3CB_TKM_O_UAZ_SPG9",
	"UK3CB_TKM_O_Ural_Fuel",
	"UK3CB_TKM_O_Ural_Empty",
	"UK3CB_TKM_O_Ural_Ammo",
	"UK3CB_TKM_O_Ural_Repair",
	"UK3CB_TKM_O_Ural_Recovery",
	"UK3CB_TKM_O_YAVA"
	];

_vehicles_ins_truck = [
	"O_Truck_02_covered_F",
	"O_Truck_02_transport_F",
	"UK3CB_TKM_O_Ural_Open",
	"UK3CB_TKM_O_V3S_Closed",
	"UK3CB_TKM_O_Ural_Covered",
	"UK3CB_TKM_O_V3S_Open"
	];

_insurgents = 
[
	"UK3CB_TKM_O_SL",
	"UK3CB_TKM_O_TL",
	"UK3CB_TKM_O_MD",
	"UK3CB_TKM_O_AT",
	"UK3CB_TKM_O_AT_ASST",
	"UK3CB_TKM_O_MK",
	"UK3CB_TKM_O_AR",
	"UK3CB_TKM_O_RIF_1"
];

_civilians = [
	"UK3CB_ADC_C_CIV_CHR",
	"UK3CB_ADC_C_CIV_ISL",
	"UK3CB_CHC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_DOC",
	"UK3CB_TKC_C_SPOT",
	"UK3CB_TKC_C_WORKER"
];

_weapons = ["rhs_weap_akms","rhs_weap_akm"];
_magazines = ["rhs_30Rnd_762x39mm","rhs_mag_rgd5","9Rnd_45ACP_Mag","rhs_mag_rdg2_white"];
_ieds = ["SatchelCharge_Remote_Mag","DemoCharge_Remote_Mag","IEDUrbanBig_Remote_Mag","IEDLandBig_Remote_Mag","IEDUrbanSmall_Remote_Mag","IEDLandSmall_Remote_Mag"];

// The main loop
_round = 1;

while { _round != rounds } do {

	_chance = 0;
	_rnd_action = 0;

	_chance = ceil random 4;

	if ( _chance != 4 ) then {
		_veh_of_choice = _vehicles_civs call bis_fnc_selectRandom;
		_veh = _veh_of_choice createVehicle (getMarkerPos "start");
		_veh setVariable ["spawnedVeh", true, true];
		_numberofCargoUnits = _veh emptyPositions "cargo";
		_bodyCount = ceil random _numberofCargoUnits;
		_units = [_civilians,_bodyCount] call sl_fnc_compileGroup;
		_grp = [getPos _veh, civilian,_units] call BIS_fnc_spawnGroup;
		_grp addVehicle _veh;
		{ _x moveInAny  _veh; } forEach units _grp;
		null = [_grp,"MOVE"] call sl_fnc_createWaypoints;
	};

	if ( _chance == 4 ) then {

		_rnd_action = ceil random 5;

		//Truck Attack
		if ( _rnd_action == 1 ) then {
			_action = ["RACE","UNLOAD"];
			_veh_of_choice = _vehicles_ins_truck call bis_fnc_selectRandom;
			_veh = _veh_of_choice createVehicle (getMarkerPos "start");
			_numberOfCargoUnits = _veh emptyPositions "cargo";
			_units = [_insurgents,_numberOfCargoUnits] call sl_fnc_compileGroup;
		};

		// Vehicle attack
		if ( _rnd_action == 2 ) then {
			_action = ["ATTACK","RACE"];
			_veh_of_choice = _vehicles_ins_weapons call bis_fnc_selectRandom;
			_veh = _veh_of_choice createVehicle (getMarkerPos "start");
			_numberOfCrewUnits = count ( [ _veh, grpnull, true, typeof _veh ] call BIS_fnc_spawnCrew );
			_units = [_insurgents,_numberOfCrewUnits] call sl_fnc_compileGroup;
		};

		//unarmed smugglers
		if ( _rnd_action == 3 ) then {
			_action = ["MOVE"];
			_veh_of_choice = _vehicles_civs call bis_fnc_selectRandom;
			_veh = _veh_of_choice createVehicle (getMarkerPos "start");
			_numberofCargoUnits = _veh emptyPositions "cargo";
			_units = [_civilians,_numberofCargoUnits] call sl_fnc_compileGroup;

			{ _veh addWeaponCargoGlobal [_x, (ceil random 5)] } forEach ( [_weapons,(ceil random 5)] call sl_fnc_compileGroup );
			{ _veh addMagazineCargoGlobal [_x, (ceil random 5)] } forEach ( [_magazines,(ceil random 5)] call sl_fnc_compileGroup );

		};

		//carbomb
		if ( _rnd_action == 4 ) then {
			_action = ["RACE", "MOVE"];
			_veh_of_choice = _vehicles_civs call bis_fnc_selectRandom;
			_veh = _veh_of_choice createVehicle (getMarkerPos "start");
			_numberofCargoUnits = _veh emptyPositions "cargo";
			_units = [_civilians,_numberofCargoUnits] call sl_fnc_compileGroup;

			_veh allowCrewInImmobile true;
			null = [_veh,"spot"] execVM "carbomb.sqf";

		};

		// Vehicle attack
		if ( _rnd_action == 5 ) then {
			_action = ["SUPRISE", "UNLOAD", "RACE"];
			_veh_of_choice = _vehicles_civs call bis_fnc_selectRandom;
			_veh = _veh_of_choice createVehicle (getMarkerPos "start");
			_numberofCargoUnits = _veh emptyPositions "cargo";
			_units = [_insurgents,_numberofCargoUnits] call sl_fnc_compileGroup;
		};

		if ( _rnd_action == 3 ) then {
			_grp = [getPos _veh, civilian,_units] call BIS_fnc_spawnGroup;
		} else {
			_grp = [getPos _veh, EAST,_units] call BIS_fnc_spawnGroup;
		};
		_grp addVehicle _veh;
		{ _x moveInAny  _veh; } forEach units _grp;

		null = [_grp,(_action call bis_fnc_selectRandom)] call sl_fnc_createWaypoints;

	};

	_wait = 10;//(30 + (random 390));
	if (debug == 1) then {
		hintSilent format["Chance: %1; Action: %2; Wait: %3; Round: %4/%5; Vehicle: %6;",_chance,_rnd_action,_wait,_round,rounds,_veh_of_choice];
		diag_log format["Chance: %1; Action: %2; Wait: %3; Round: %4/%5; Vehicle: %6;",_chance,_rnd_action,_wait,_round,rounds,_veh_of_choice];
		pvHint = format["Chance: %1; Action: %2; Wait: %3; Round: %4/%5; Vehicle: %6;",_chance,_rnd_action,_wait,_round,rounds,_veh_of_choice];
		publicVariable "pvHint";
	};

	sleep _wait;
	_round = _round + 1;
	_chance = 0;
	_rnd_action = 0;

};

sleep 180;

RBD_DONE = 1;
publicVariable "RBD_DONE";
OBJ_REEZO_ROADBLOCKDUTY setTaskState "SUCCEEDED";
null = ["TaskSucceeded",["Roadblock Duty"]] call bis_fnc_showNotification;