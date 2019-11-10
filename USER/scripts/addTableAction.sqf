params [["_obj",objNull]];

[
    _obj,
    "Gegenstände Untersuchen",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",
    "_this distance _target < 3",
    "_caller distance _target < 3",
    {},
    {},
    {
        if (missionNamespace getVariable ["MAPSEARCHED",false]) then {
            ["grad_notification1",["GEGENSTÄNDE UNTERSUCHEN","Die Karte ist schon jemandem aufgefallen."]] call BIS_fnc_showNotification;
        } else {
            missionNamespace setVariable ["MAPSEARCHED",true,true]
        };
    },
    {},
    [],
    10,
    999,
    true,
    false
] call BIS_fnc_holdActionAdd;
