if ((missionNamespace getVariable ["ZEUSENDMISSION",0]) >= 2) exitWith {};

missionNamespace setVariable ["ZEUSENDMISSION",(missionNamespace getVariable ["ZEUSENDMISSION",0]) + 1,true];

if ((missionNamespace getVariable ["ZEUSENDMISSION",0]) < 2) exitWith {
    [objNull, "Zur Bestätigung erneut ausführen."] call BIS_fnc_showCuratorFeedbackMessage;
};

[[],"USER\scripts\outro.sqf"] remoteExec ["execVM",0,false];
