// Player Score Usage
//		[addplayer,player,100] call WarZones_fnc_score;
//		_playerscore = [readplayer,player,nil] call WarZones_fnc_score;
// Side Score Usage
//		[addside,side,100] call WarZones_fnc_score;
//		_sidescore = [readside,side,nil] call WarZones_fnc_score;

_param = _this select 0; // Can be addscoreplayer, readscoreplayer, addscoreside, readscoreside
_val1 = _this select 1; // Player/Side
_val2 = _this select 2; // Value

switch (_param) do {
	case "addplayer": {
		_val1 addRating _val2;
//		rating _val1;
	};

	case "readplayer": {
		rating _val1;
	};

	case "addside": {
		_val1 addScoreSide _val2
//		scoreSide _val1;
	};

	case "readside": {
		scoreSide _val1;
	};
	default {
		// Nothing
	};
};