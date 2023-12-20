/// @desc TeamData Constructor
/// @param {color} COLOR - The color of the team.
function TeamData(_COLOR) constructor{
	COLOR			=	_COLOR
	TEAMMATES	=	[]
	POINTS		=	0
	
	WIN			=	false
	WINS			=	0
	LOSE			=	false
	LOSSES		=	0
	
	/*	Getters */	{
		static getCOLOR			= function() {	return COLOR;	}
		static getTEAMMATES	= function() {	return TEAMMATES;	}
		static getTEAMMATE		= function(_i) {	return TEAMMATES[_i];	}
		static getPOINTS			= function(_i) {	return POINTS;	}
		static getWIN			= function() {	return WIN;	}
		static getWINS			= function() {	return WINS;	}
		static getLOSE			= function() {	return LOSE;	}
		static getLOSSES		= function() {	return LOSSES;	}
	}
	/*	Setters */	{
		static setPOINTS			= function(_POINTS)	{		POINTS	=	_POINTS	}
		static setWIN			= function(_WIN)		{		WIN		=	_WIN	}
		static setLOSE			= function(_LOSE)	{		LOSE		=	_LOSE	}
	}
	/*	Others */	{
		static addTEAMMATE			= function(_TEAMMATE)	{
			if !array_contains(TEAMMATES,_TEAMMATE) {
				array_push(TEAMMATES,_TEAMMATE)
			}
		}
		static removeTEAMMATE	= function(_TEAMMATE)	{	
			var _index = array_find_index(TEAMMATES, _TEAMMATE);
			
			if (_index != -1) {
			    array_delete(TEAMMATES, _index, 1);
			}
		}
		
		static addPOINTS				= function(_POINTS)		{		POINTS	+=	_POINTS	}
		static subPOINTS				= function(_POINTS)		{		POINTS	-=	_POINTS	}
																	
		static addWINS				= function(_WINS)		{		WINS		+=	_WINS		}
		static addLOSSES			= function(_LOSSES)		{		LOSSES	+=	_LOSSES	}
	}
}
