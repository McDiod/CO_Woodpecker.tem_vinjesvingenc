"respawn_west" setMarkerPos [1169.18,5340.16,0];

[] execVM "USER\scripts\createIntro2Helicopters.sqf";

sleep 16;

missionNamespace setVariable ["SWITCHVEHICLES",true,true];

sleep 8;

skipTime (22 - daytime + 24 ) % 24;
0 setFog 0.3;

sleep 18;

missionNamespace setVariable ["INTRO2COMPLETE",true,true];
