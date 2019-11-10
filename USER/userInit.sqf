/*
*   Wird zum Missionsstart auf Server und Clients ausgeführt.
*   Funktioniert wie die init.sqf.
*/

#define ZEUSMODULE_CATEGORY         "WOODPECKER"

if (hasInterface && {!didJIP} && {playerSide == WEST}) then {
    [] execVM "USER\scripts\disableBFT.sqf";
    [] execVM "USER\scripts\intro1.sqf";
};

if (hasInterface) then {
    [ZEUSMODULE_CATEGORY,"FOB Complete",compile preprocessFileLineNumbers "USER\scripts\fn_zeusFobComplete.sqf"] call zen_custom_modules_fnc_register;
    [ZEUSMODULE_CATEGORY,"Explode Gasstation",compile preprocessFileLineNumbers "USER\scripts\fn_zeusGasstation.sqf"] call zen_custom_modules_fnc_register;
};
