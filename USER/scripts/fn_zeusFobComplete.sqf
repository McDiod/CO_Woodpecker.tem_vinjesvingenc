if (missionNamespace getVariable ["FOBCOMPLETE",false]) exitWith {};

missionNamespace setVariable ["FOBCOMPLETE",true,true];

[[],"USER\scripts\intro2.sqf"] remoteExec ["execVM",0,false];
[[],"USER\scripts\onFobCompleteServer.sqf"] remoteExec ["execVM",2,false];
