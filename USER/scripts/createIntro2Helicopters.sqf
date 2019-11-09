private _type = "C_IDAP_Heli_Transport_02_F";
private _dir = 290;
private _wpPos = [2611.28,2825.98,0];

private _allVehicles = [];

{
    _x params ["_pos","_cargoType"];

    ([_pos,_dir,_type,CIVILIAN] call BIS_fnc_spawnVehicle) params ["_heli","_allUnits","_grp"];
    [_heli,"ION"] call BIS_fnc_initVehicle;

    private _cargo = _cargoType createVehicle (_pos vectorAdd [0,0,-8]);
    _cargo setMass 1000;
    _heli setSlingLoad _cargo;

    _grp addWaypoint [_wpPos,0];

    _allVehicles pushBack _heli;
    _allVehicles pushBack _cargo;
    _allVehicles append _allUnits;

    if (_forEachIndex == 1) then {
        missionNamespace setVariable ["intro2heli",_heli,true];
    };

} forEach [
    [[4946.32,1483.4,50.5441],"B_Slingload_01_Cargo_F"],
    [[4987.07,1431.69,52.0814],"B_LSV_01_unarmed_F"],
    [[5033.28,1383.14,52.2089],"B_LSV_01_unarmed_F"]
];

sleep 35;

{deleteVehicle _x} forEach _allVehicles;
