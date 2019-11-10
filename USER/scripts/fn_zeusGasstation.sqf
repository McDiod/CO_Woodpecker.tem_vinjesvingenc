if (missionNamespace getVariable ["GASSTATIONEXPLODED",false]) exitWith {};

missionNamespace setVariable ["GASSTATIONEXPLODED",true,true];
["TaskUpdated",["","Tankstelle"]] remoteExec ["BIS_fnc_showNotification",0,false];

[[],"USER\scripts\onGasstationExplodedServer.sqf"] remoteExec ["execVM",2,false];
[[],"USER\scripts\initPropagandaTowers.sqf"] remoteExec ["execVM",2,false];
