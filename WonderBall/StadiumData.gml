// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StadiumData(_NAME,_ICON,_ROOM) constructor{
	NAME	=	_NAME
	ICON	=	_ICON
	ROOM	=	_ROOM
	
	static getNAME	=	function() {	return NAME	}
	static getICON	=	function() {	return ICON	}
	static getROOM	=	function() {	return ROOM	}
	
}

function CupData(_NAME,_STADIUMS) constructor {
	NAME		=	_NAME
	STADIUMS	=	_STADIUMS
		
	static getNAME		=	function() {	return NAME			}
	static getSTADIUMS	=	function() {	return STADIUMS	}
	static getSTADIUM	=	function(_i) {	return STADIUMS[_i]	}
}
