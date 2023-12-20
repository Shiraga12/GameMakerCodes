// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @desc  CharacterData Constructor
/// @param {string}	NAME			The short name or identifier for the character.
/// @param {string}	FULLNAME	The full name of the character.
/// @param {string}	TYPE			The type of the character (e.g., "Speed", "All-round", "Power").
/// @param {bool}		UNLOCKED	Whether the character is unlocked or not.
function CharacterData(_NAME,_FULLNAME,_TYPE,_UNLOCKED = true) constructor{
	NAME			=	_NAME
	FULLNAME	=	_FULLNAME
	TYPE			=	_TYPE
	UNLOCKED	=	_UNLOCKED
	SPRITES		=	{}
	
	static getNAME			=	function()			{	return NAME;								};
    static getFULLNAME		=	function()			{	return FULLNAME;							};
	static getSPRITE			=	function(_NAME)	{	return struct_get(SPRITES, _NAME);		};
    static getSPRITENAME	=	function()			{	return struct_get_names(SPRITES);		};
    static getTYPE			=	function()			{	return TYPE;									};	
    static getTYPE			=	function()			{	return UNLOCKED;									};	
	
	static hasSPRITE			=	function(_NAME)	{	return struct_exists(SPRITES, _NAME);	};
}
