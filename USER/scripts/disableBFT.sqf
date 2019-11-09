waitUntil {!isNil "ace_map_BFT_markers"};
ace_map_BFT_Enabled = false;

waitUntil {
    sleep 1;
    missionNamespace getVariable ["INTROHELIS_LANDED",false];
};

ace_map_BFT_Enabled = true;
