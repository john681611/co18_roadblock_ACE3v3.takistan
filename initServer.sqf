// Author: Sacha Ligthert <sacha@lowtac.nl>

// Include some funtions...
#include "functions.sqf";
_fnc_makeDraggable = {  
	params ["_object"]; 
	[_object, true, [0,1.5,0], 0] call ace_dragging_fnc_setDraggable;  
};
["VirtualReammoBox_F", "init", _fnc_makeDraggable, true, [], true] call CBA_fnc_addClassEventHandler;

// First things first.. Starting date
env_startTime = paramsArray select 0;
setDate[2012,3,25,env_startTime,30];

// determine time acceleration
setTimeMultiplier (paramsArray select 1);

// Define max rounds
rounds = paramsArray select 2;

// Is debug on?
debug = paramsArray select 3;

// Scenario logic
RBD_CLEAR = 0;
pvHint = "";
RBD_DONE = 1;


// Lets rock!
execVM "mainloop.sqf";