private _waitTime = 180 + random 270;

[{
    {[_x,["synch_propaganda",400,1,false]] remoteExec ["say3D",0,false]} forEach PROPAGANDATOWERS;
    [] execVM "USER\scripts\initPropagandaTowers.sqf";
},[],_waitTime] call CBA_fnc_waitAndExecute;
