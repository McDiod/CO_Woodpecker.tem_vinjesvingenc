if (missionNamespace getVariable ["FOBCOMPLETE",false]) exitWith {};

missionNamespace setVariable ["FOBCOMPLETE",true,true];

"respawn_west" setMarkerPos [1169.18,5340.16,0];

[[],"USER\scripts\intro2.sqf"] remoteExec ["execVM",0,false];
[[],{
    sleep 24;
    skipTime (21.5 - daytime + 24 ) % 24;
    sleep 5;
    missionNamespace setVariable ["INTRO2COMPLETE",true,true];

}] remoteExec ["spawn",2,false];
[[],"USER\scripts\createIntro2Helicopters.sqf"] remoteExec ["execVM",2,false];
