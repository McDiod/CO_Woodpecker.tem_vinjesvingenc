#define INTROLAYER  10

waitUntil {(missionNamespace getVariable ["CBA_missionTime",0]) > 0};

INTROLAYER cutText ["","BLACK OUT",0.001];
0.001 fadeSound 0;

sleep 5;

playSound "music_intro1";
8 fadeSound 1;

sleep 4;
[parseText "<t font='PuristaBold' align='center' size='1.5' valign='middle'>Norwegen, 26. Juni 2020, kurz nach 0600</t>", [0,0.5,1,1], [10,1], 5, 1, 0] spawn BIS_fnc_textTiles;

sleep 9;
[parseText "<t font='PuristaBold' align='center' size='1.5' valign='middle'>Zwei Blackhawks eines privaten Sicherheitsunternehmens befinden sich im Anflug auf das Vinjesfjord.</t>", [0,0.5,1,1], [10,1], 8, 1, 0] spawn BIS_fnc_textTiles;

sleep 10;

INTROLAYER cutText ["","BLACK IN",3];
