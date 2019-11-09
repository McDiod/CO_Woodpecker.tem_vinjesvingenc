if (missionNamespace getVariable ["FOBCOMPLETE",false]) exitWith {};

missionNamespace setVariable ["FOBCOMPLETE",true,true];

"respawn_west" setMarkerPos [1169.18,5340.16,0];

[[],"USER\scripts\intro2.sqf"] remoteExec ["execVM",0,false];
