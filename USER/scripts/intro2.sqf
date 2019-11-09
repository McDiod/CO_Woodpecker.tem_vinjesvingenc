{
    if (local _x) then {
        [_x] execVM "USER\scripts\moveToBriefing.sqf";
    };
} forEach playableUnits;

if (!hasInterface) exitWith {};
