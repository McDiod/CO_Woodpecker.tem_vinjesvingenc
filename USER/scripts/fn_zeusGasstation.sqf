if (missionNamespace getVariable ["GASSTATIONEXPLODED",false]) exitWith {};

missionNamespace setVariable ["GASSTATIONEXPLODED",true,true];
["TaskUpdated",["","Tankstelle"]] remoteExec ["BIS_fnc_showNotification",0,false];
