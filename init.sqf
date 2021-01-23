[]execVM "R3F_LOG\init.sqf";

pay_creds = {
	_credits = factory getVariable "R3F_LOG_CF_credits"; 
	_credits = _credits + _this; 
	factory setVariable ["R3F_LOG_CF_credits", _credits, true]; 
	hint format["Account %1 Creds", _this];
};