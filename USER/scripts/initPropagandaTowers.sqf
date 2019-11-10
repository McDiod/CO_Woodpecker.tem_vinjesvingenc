[{
    {[_x,["synch_propaganda",300,1,false]] remoteExec ["say3D",0,false]} forEach PROPAGANDATOWERS
    [] execVM "USER\scripts\initPropagandaTowers.sqf";
},[],180 + random 270] call CBA_fnc_waitAndExecute;
