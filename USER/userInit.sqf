/*
*   Wird zum Missionsstart auf Server und Clients ausgeführt.
*   Funktioniert wie die init.sqf.
*/
if (hasInterface && {!didJIP} && {playerSide == WEST}) then {
    [] execVM "USER\scripts\disableBFT.sqf";
    [] execVM "USER\scripts\intro1.sqf";
};
