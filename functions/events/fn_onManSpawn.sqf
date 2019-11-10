params [["_unit",objNull]];

if (!local _unit) exitWith {};

if (faction _unit == "OPF_F") then {
    [_unit, selectRandom [
        "WhiteHead_01",
        "WhiteHead_02",
        "WhiteHead_03",
        "WhiteHead_04",
        "WhiteHead_05",
        "WhiteHead_06",
        "WhiteHead_07",
        "WhiteHead_08",
        "WhiteHead_09",
        "WhiteHead_10",
        "WhiteHead_11",
        "WhiteHead_12",
        "WhiteHead_13"
    ]] remoteExec ["setFace", 0, _unit]
};
