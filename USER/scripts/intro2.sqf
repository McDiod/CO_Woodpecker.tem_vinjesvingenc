#define INTROLAYER  10
#define TEXTPOS     [0,0.9,1,1]

private _fnc_move = {
    {
        if (local _x) then {
            [_x] execVM "USER\scripts\moveToBriefing.sqf";
        };
    } forEach playableUnits;
};

if (!hasInterface) exitWith _fnc_move;
if (playerSide != WEST) exitWith {};

private _acreVolume = [] call acre_api_fnc_getGlobalVolume;
[0] call acre_api_fnc_setGlobalVolume;

playSound "music_intro2";

INTROLAYER cutText ["","BLACK OUT",1];
sleep 1.5;

[] spawn _fnc_move;

private _cam = "camera" camCreate [903.82,5081.9,4.68314];
_cam cameraEffect ["internal", "BACK"];
showCinemaBorder true;
_cam camSetTarget [1195.44,5315.62,0];
_cam camCommit 0;

_cam camSetPos [907.835,5077.47,4.48785];
_cam camCommit 7;

INTROLAYER cutText ["","BLACK IN",3,true];
sleep 0.5;
[parseText "<t font='PuristaBold' align='center' size='1.5' valign='middle'>FOB Abo ist gesichert.</t>", TEXTPOS, [10,1], 3, 1, 0] spawn BIS_fnc_textTiles;

sleep 5;

INTROLAYER cutText ["","BLACK OUT",0.5];
sleep 0.5;
_cam camSetPos [1297.06,5264.9,10.109];
_cam camCommit 0;
INTROLAYER cutText ["","BLACK IN",0.5];
[parseText "<t font='PuristaBold' align='center' size='1.5' valign='middle'>Die Ankunft wird nicht unbemerkt geblieben sein.</t>", TEXTPOS, [10,1], 3, 1, 0] spawn BIS_fnc_textTiles;

_cam camSetPos [1321.08,5253.61,7.64724];
_cam camCommit 7;

preLoadCamera [5374.46,1103.92,76];

sleep 6;

INTROLAYER cutText ["","BLACK OUT",0.5];
sleep 0.5;

private _intro2heli = missionNamespace getVariable ["intro2heli",objNull];
_cam camSetTarget _intro2heli;
_cam camSetPos [3833.34,2340.67,18.0385];
_cam camSetFOV 0.15;
_cam camCommit 0;
INTROLAYER cutText ["","BLACK IN",0.5];
[parseText "<t font='PuristaBold' align='center' size='1.5' valign='middle'>Im Laufe des Tages wird Material nachgeflogen und die FOB eingerichtet.</t>", TEXTPOS, [10,1], 4, 1, 0] spawn BIS_fnc_textTiles;

sleep 8;
INTROLAYER cutText ["","BLACK OUT",1.5,true];
sleep 2;
[parseText "<t font='PuristaBold' align='center' size='1.5' valign='middle'>Etwa 15h später...</t>", TEXTPOS, [10,1], 4, 1, 0] spawn BIS_fnc_textTiles;

preLoadCamera [1190.69,5301.71,8.12015];
sleep 4;
_cam camSetPos [1190.69,5301.71,8.12015];
_cam camSetTarget player;
_cam camCommit 0;
INTROLAYER cutText ["","BLACK IN",1.5,true];
_cam camSetPos [1178.29,5326.94,3.54591];
_cam camCommit 6;

sleep 4;

INTROLAYER cutText ["","BLACK OUT",0.5,true];
sleep 0.8;

_cam cameraEffect ["terminate", "BACK"];
camDestroy _cam;
showCinemaBorder false;

INTROLAYER cutText ["","BLACK IN",0.5,true];

[_acreVolume] call acre_api_fnc_setGlobalVolume;
