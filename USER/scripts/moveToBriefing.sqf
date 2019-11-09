params [["_unit",objNull]];

if (!isNull objectParent _unit) then {
    moveOut _unit;
    _unit setVelocity [0,0,0];
};

[_unit] call grad_loadout_fnc_doLoadoutForUnit;

private _allPositions = [
    [1171.62,5350.56,0.00143433],
    [1171.96,5351.69,0.00143433],
    [1173.39,5344.23,0.00143433],
    [1174.11,5344.6,0.00143433],
    [1169,5343,0.00143433],
    [1169.92,5342.94,0.00143433],
    [1170.84,5342.86,0.00143433],
    [1171.82,5342.8,0.00143433],
    [1172.86,5342.69,0.00143433],
    [1175.7,5343.83,0.00143433],
    [1176.41,5344.42,0.00143433],
    [1177.14,5344.99,0.00143433],
    [1177.89,5345.62,0.00143433],
    [1178.73,5346.26,0.00143433],
    [1178.42,5352.18,0.00143433],
    [1178.34,5352.98,0.00143433],
    [1179.55,5347.71,0.00143433],
    [1179.64,5348.62,0.00143433],
    [1179.75,5349.55,0.00143433],
    [1179.83,5350.52,0.00143433],
    [1179.97,5351.56,0.00143433],
    [1179,5354.51,0.00143433],
    [1178.43,5355.23,0.00143433],
    [1177.87,5355.98,0.00143433],
    [1177.25,5356.74,0.00143433],
    [1176.64,5357.59,0.00143433]
];

private _fallBackPosition = [1173.88,5333.16,0];
private _ptlPosition = _allPositions select 0;

private _positionID = _unit getVariable ["brfUnitID",-1];
private _position = _allPositions param [_positionID,false];

if (_position isEqualType false) then {
    _position = _fallBackPosition findEmptyPosition [0,10,"B_Soldier_F"];
};

private _dir = 0;
// ptl und pta
if (_positionID < 2) then {
    _dir = 117;
} else {
    _dir = _position getDir _ptlPosition;
};

// fireteams abgehockt
private _anim = ["AmovPknlMstpSlowWrflDnon","AmovPercMstpSlowWrflDnon"] select (typeOf _unit == "B_Soldier_SL_F" || (typeOf _unit == "B_medic_F" && rankID _unit > 1));

_unit allowDamage false;
_unit setDir _dir;
_unit setPos _position;
_unit switchMove "";
_unit switchMove _anim;

[_unit] spawn {
    params [["_unit",objNull]];
    sleep 2;
    _unit allowDamage true;
};
