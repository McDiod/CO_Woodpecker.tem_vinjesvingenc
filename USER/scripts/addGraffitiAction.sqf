params [["_obj",objNull]];

[
    _obj,
    "Ansehen",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",
    "_this distance _target < 3",
    "_caller distance _target < 3",
    {},
    {},
    {
        if (missionNamespace getVariable ["GRAFFITIFOUND",false]) then {
            ["grad_notification1",["ANSEHEN","Jemand hat das schon gefunden."]] call BIS_fnc_showNotification;
        } else {
            missionNamespace setVariable ["GRAFFITIFOUND",true,true]
        };
    },
    {},
    [],
    5,
    999,
    true,
    false
] call BIS_fnc_holdActionAdd;
