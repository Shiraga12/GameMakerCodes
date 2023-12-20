// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @desc Function Description
/// @param {any*} _LIMIT Description
/// @param {any*} _TRIGGER Description
/// @returns {id} Description
function LoadingTime(_LIMIT,_TRIGGER){
	LIMIT		=	_LIMIT
	TRIGGER	=	_TRIGGER
	
	LoadingOBJ = instance_create_depth(SCREEN_WIDTH,SCREEN_HEIGHT,-99,oLoading)
	LoadingOBJ.seconds	=	LIMIT
	LoadingOBJ.trigger	=	TRIGGER
	
	return LoadingOBJ;
}
