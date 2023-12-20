// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function PlayerData(_ID,_COLOR = c_white) constructor{
	ID				= _ID
	COLOR			= _COLOR
	CHARACTER	= -1
	ITEM			= 0
	CPU			= false
	ENABLED		= false
	
	static getID				=	function() { return ID			}
	
	static getCOLOR			=	function() { return COLOR		}
	static getCHARACTER	=	function() { return CHARACTER	}
	static getITEM			=	function() { return ITEM			}
	static getCPU			=	function() { return CPU			}
	static getENABLED		=	function() { return ENABLED	}
																	
	static setCOLOR			=	function(_COLOR)			{ COLOR		=	_COLOR		}
	static setCHARACTER	=	function(_CHARACTER)	{ CHARACTER	=	_CHARACTER	}
	static setITEM			=	function(_ITEM)			{ ITEM			=	_ITEM			}
	static setCPU			=	function(_CPU)			{ CPU			=	_CPU			}
	static setENABLED		=	function(_ENABLED)		{ ENABLED	=	_ENABLED		}
	
}
