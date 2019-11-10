if (!hasInterface) exitWith {};

// narrow short smoke
private _radius = 20;
private _source = "#particlesource" createVehicleLocal _gasStationPos;
_source setParticleCircle [_radius/2, [0,0,0]];
_source setParticleRandom [10,[_radius/3,_radius/3,40],[-2,-2,10],2,0.5,[0,0,0,0.1],1,0.3];
_source setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d",8,0,40,1], "", "Billboard",1,30,[0,0,0],[0,0,0],3,8,7,0.5,[_radius/3,_radius/2,_radius,_radius*2],[[0.5,0.5,0.5,0.5],[0.349,0.231,0.122,0.4],[0.349,0.231,0.122,0.1],[0,0,0,0]],[0.5],1,0, "", "", ""];
_source setDropInterval 0.01;
[{
    params ["_args","_handle"];
    _args params ["_source","_dropInterval"];

    _dropInterval = _dropInterval + 0.01;
    _args set [1,_dropInterval];

    if (_dropInterval > 0.5) then {
        deleteVehicle _source;
        [_handle] call CBA_fnc_removePerFrameHandler;
    };

},1,[_source,0.01]] call CBA_fnc_addPerFrameHandler;

// wide short smoke
private _radius = 35;
private _source = "#particlesource" createVehicleLocal _gasStationPos;
_source setParticleCircle [_radius/2, [0,0,0]];
_source setParticleRandom [10,[_radius/3,_radius/3,40],[-2,-2,10],2,0.5,[0,0,0,0.1],1,0.3];
_source setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d",8,0,40,1], "", "Billboard",1,30,[0,0,0],[0,0,0],3,8,7,0.5,[_radius/3,_radius/2,_radius,_radius*2],[[0.5,0.5,0.5,0.5],[0.349,0.231,0.122,0.4],[0.349,0.231,0.122,0.1],[0,0,0,0]],[0.5],1,0, "", "", ""];
_source setDropInterval 0.25;
[{
    params ["_args","_handle"];
    _args params ["_source","_dropInterval"];

    _dropInterval = _dropInterval + 0.01;
    _args set [1,_dropInterval];

    if (_dropInterval > 1) then {
        deleteVehicle _source;
        [_handle] call CBA_fnc_removePerFrameHandler;
    };

},1,[_source,0.01]] call CBA_fnc_addPerFrameHandler;


// big short fire
_source = "#particlesource" createVehicleLocal _gasStationPos;
_source setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d",16,10,32,1],"","Billboard",1,3,[0,0,0],[0,0,2.4],0,0.085,0.2,0.05,[7,0.12],[[1,1,1,-1]],[0.5,1],0,0,"","","",0,false,0,[[0,0,0,0]]];
_source setParticleRandom [0.4,[2,2,2],[0.1,0.1,0.5],10,0.1,[0.1,0.1,0.1,0],0,0,0.1,0];
_source setParticleCircle [6,[0,0,0]];
_source setDropInterval 0.01;
[{deleteVehicle _this},_source,10] call CBA_fnc_waitAndExecute;

// explosions
_source = "#particlesource" createVehicleLocal _gasStationPos;
_source setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d",16,2,80,0],"","Billboard",1,1,[0,0,0],[0,0,1],0,2,3,0.1,[5,8,0,0,15],[[1,1,1,-20],[1,1,1,-15],[1,1,1,-10],[1,1,1,-6],[1,1,1,-2]],[0.25,0,0,0],0.2,0.1,"","","",0,false,0,[[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]];
_source setParticleRandom [0.8,[5,5,6],[2,2,0.5],25,0.4,[0,0,0,0.3],0.2,0.05,1,0];
_source setDropInterval 0.01;
[{deleteVehicle _this},_source,10] call CBA_fnc_waitAndExecute;

// small short fires
for "_i" from 0 to 35 do {
    _randomPos = _gasStationPos getPos [7 + (random 25),random 360];
    _source = "#particlesource" createVehicleLocal _randomPos;
    _source setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d",16,10,32,1],"","Billboard",1,1,[0,0,0],[0,0,1],0,0.085,0.2,0.05,[1,0.12],[[1,1,1,-1]],[0.5,1],0,0,"","","",0,false,0,[[0,0,0,0]]];
    _source setParticleRandom [0.4,[2,2,2],[0.1,0.1,0.5],10,0.1,[0.1,0.1,0.1,0],0,0,0.1,0];
    _source setParticleCircle [0.7,[0,0,0]];
    _source setDropInterval 0.01;
    [{deleteVehicle _this},_source,5 + (random 15)] call CBA_fnc_waitAndExecute;
};


// small permanent fires and smoke
{
    // Fire
    _source = "#particlesource" createVehicleLocal _x;
    _source setParticleCircle [0, [0, 0, 0]];
    _source setParticleRandom [0.2, [1, 1, 0], [0.5, 0.5, 0], 1, 0.5, [0, 0, 0, 0], 0, 0];
    _source setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02", 8, 2, 6], "", "Billboard", 1, 1, [0, 0, 0], [0, 0, 0.5], 1, 1, 0.9, 0.3, [1.5], [[1, 0.7, 0.7, 0.5]], [1], 0, 0, "", "", ""];
    _source setDropInterval 0.03;

    // Smoke part 1
    _source = "#particlesource" createVehicleLocal _x;
    _source setParticleCircle [0, [0, 0, 0]];
    _source setParticleRandom [0, [0, 0, 0], [0.33, 0.33, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
    _source setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02", 8, 0, 1], "", "Billboard", 1, 10, [0, 0, 0.5], [0, 0, 2.9], 1, 1.275, 1, 0.066, [4, 5, 10, 10], [[0.3, 0.3, 0.3, 0.33], [0.4, 0.4, 0.4, 0.33], [0.2, 0.2, 0, 0]], [0, 1], 1, 0, "", "", ""];
    _source setDropInterval 0.5;

    // Smoke part 2
    _source = "#particlesource" createVehicleLocal _x;
    _source setParticleCircle [0, [0, 0, 0]];
    _source setParticleRandom [0, [0, 0, 0], [0.5, 0.5, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
    _source setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02", 8, 3, 1], "", "Billboard", 1, 15, [0, 0, 0.5], [0, 0, 2.9], 1, 1.275, 1, 0.066, [4, 5, 10, 10], [[0.1, 0.1, 0.1, 0.75], [0.4, 0.4, 0.4, 0.5], [1, 1, 1, 0.2]], [0], 1, 0, "", "", ""];
    _source setDropInterval 0.25;
} forEach [
    [3389.34,1862.2,0.528984],
    [3391.61,1873.03,0.461769],
    [3391.41,1871.77,0.461769],
    [3366.89,1869.64,0.444069],
    [3375.62,1868.19,0.526825]
];

// permanent dust/smoke
private _gasStationPos = [3377.2,1870.9,-0.0528336];
private _color = [.1, .1, .1];
_source = "#particlesource" createVehicleLocal _gasStationPos;
_source setParticleParams [
    ["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8, 0],
    "",
    "Billboard",
    1,
    30,
    [0, 0, 0],
    [0.5,0.2,0],
    12,1.275,1,1,
    [6,20,10,0],
    [_color + [0.1], _color + [0.5], _color + [0.2]],
    [1000],
    1,
    1,
    "",
    "",
    ""
];
_source setParticleRandom [3, [40, 40, 60], [2, 2, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
_source setParticleCircle [0.1, [0, 0, 0]];
_source setDropInterval 0.019;
[{deleteVehicle _this},_source,1800] call CBA_fnc_waitAndExecute;
