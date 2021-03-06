/* WarZones - A dynamic Mission for Arma 3
/
/  For more information visit https://github.com/m1ndgames/WarZones/
/
/  File: initPlayerLocal.sqf
/  Description: This init script is executed by players when the mission is started. (Before briefing screen)
/
*/
if (isServer) exitWith {};

if (player != player) then {
	waitUntil {player == player};
};

["Client: Initializing..."] call WarZones_fnc_debug;

// Enable HUD
showHUD true;
["Client: HUD enabled"] call WarZones_fnc_debug;

// Disable NPC Talk
player disableConversation true;
["Client: Disabled conversations"] call WarZones_fnc_debug;

// Create Diary
[] spawn WarZones_fnc_CreateDiary;
["Client: Diary created"] call WarZones_fnc_debug;

_drawmaphandler = ((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["Draw",{ [] call WarZones_fnc_drawmap; }];
["Client: Local Handler Created: Draw"] call WarZones_fnc_debug;

_draw3dhandler = addMissionEventHandler ["Draw3D",{ [] call WarZones_fnc_draw3d; }];
["Client: Local Handler Created: Draw3D"] call WarZones_fnc_debug;
<<<<<<< HEAD
=======

player addEventHandler ["HandleDamage", {_this exec "WarZones_hnd_Player_HandleDamage.sqf"}];
["Client: Local Handler Created: HandleDamage"] call WarZones_fnc_Debug;

// Add player Menu
// ToDo: Fix for Vanilla
//_settings = [["Settings", "WarZones_fnc_PlayerMenu.sqf"]] call CBA_fnc_addPlayerAction;
>>>>>>> de1852e4847c0b8b5bdc03dc95b643e36d753808

// End of File: InitPlayerLocal.sqf
