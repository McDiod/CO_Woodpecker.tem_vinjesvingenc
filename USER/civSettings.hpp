/*
*   Legt Einstellungen für grad-civs Zivilisten fest.
*   In der Klasse "userEquipment" können eigene Ausrüstungsgegenstände für die Zivilisten definiert werden.
*/

autoInit = 0;
enableCivs = 0;

maxCivsOnFoot = 120;
maxCivsResidents = 60;
maxCivsInVehicles = 10;
spawnDistancesOnFoot[] = {500,3000};
spawnDistancesInVehicles[] = {1000,4500};
debugFps = 0;
minCivUpdateTime = 3;
minFps = 30;
automaticVehicleGroupSize = 1;
exitOn = "";
onSpawn = "";
onHeldUp = "";
backpackProbability = 0.1;

class userEquipment {
    // Soll die hier definierte Ausrüstung die vordefinierte, inselabhängige Ausrüstung ersetzen oder zu dieser hinzugefügt werden? (0: hinzufügen, 1: ersetzen)
    replace = 0;

    // Uniformen
    clothes[] = {

    };

    // Helme, Mützen
    headgear[] = {

    };

    // Gesichter
    faces[] = {

    };

    // Brillen, Masken, Halstücher
    goggles[] = {

    };

    // Rucksäcke
    backpacks[] = {

    };

    vehicles[] = {

    };
};
