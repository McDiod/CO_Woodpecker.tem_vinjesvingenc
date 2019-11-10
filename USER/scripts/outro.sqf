// 36s music

#define INTROLAYER  10
#define TEXTPOS     [0,0.9,1,1]

[0] call acre_api_fnc_setGlobalVolume;

playSound "music_outro";

INTROLAYER cutText ["","BLACK OUT",1];
sleep 1.5;

private _cam = "camera" camCreate [5196.17,4579.49,171.745];
_cam cameraEffect ["internal", "BACK"];
showCinemaBorder true;
_cam camSetTarget [4701.3,4314.6,1.59427];
_cam camCommit 0;

_cam camSetPos [4428.46,4778.67,171.745];
_cam camCommit 40;

INTROLAYER cutText ["","BLACK IN",3,true];
sleep 2;
[parseText "<t font='PuristaBold' align='center' size='1.5' valign='middle'>Mit der Eroberung vom Floten scheint das Gros der Feindkräfte ausgeschaltet.</t>", TEXTPOS, [10,1], 6, 1, 0] spawn BIS_fnc_textTiles;
sleep 8;
[parseText "<t font='PuristaBold' align='center' size='1.5' valign='middle'>Die Sicherheitskräfte harren die Nacht aus, bis am folgenden Morgen ihre Ablöse kommt.</t>", TEXTPOS, [10,1], 6, 1, 0] spawn BIS_fnc_textTiles;
sleep 8;
[parseText "<t font='PuristaBold' align='center' size='1.5' valign='middle'>Über die nächsten zwei Wochen gelingen der Landespolizei 34 weitere Festnahmen.</t>", TEXTPOS, [10,1], 6, 1, 0] spawn BIS_fnc_textTiles;
sleep 14;

["end1",true,2] call BIS_fnc_endMission;
