private _gasStationPos = [3377.2,1870.9,-0.0528336];

// spawn explosions
[_gasStationPos] spawn {
    params ["_gasStationPos"];
    ("BO_GBU12_LGB" createVehicle (_gasStationPos vectorAdd [random 5,random 5,0])) setDamage 1;
    sleep 0.2;
    ("R_230mm_fly" createVehicle (_gasStationPos vectorAdd [random 5,random 5,0])) setDamage 1;
    sleep 0.1;
    ("BO_GBU12_LGB" createVehicle (_gasStationPos vectorAdd [random 5,random 5,0])) setDamage 1;
};
["distant_explosion"] remoteExec ["playSound",0,false];
[[],"USER\scripts\fn_createGasstationFires.sqf"] remoteExec ["execVM",0,false];
