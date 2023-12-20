// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @desc Mode to select for Wonderball (E.G.: Scored Match or Timed Match)
/// @param {string} NAME			The name of the game mode.
/// @param {string} DESCRIPTION	A brief description of the game mode.
/// @param {struct} RULES		param descripton
function MatchData(_NAME,_DESCRIPTION,_RULES) constructor {
	NAME			=	_NAME			
	DESCRIPTION	=	_DESCRIPTION
	RULES			=	_RULES
	
	static getNAME			= function() { return NAME			}
	static getDESCRIPTION   = function() { return DESCRIPTION	}
	static getRULES			= function() { return RULES		}
}
}