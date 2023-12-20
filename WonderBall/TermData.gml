/// @desc  TermData Constructor
/// @param {string} NAME - The name of the collectible term.
/// @param {string} DESCRIPTION - The description of the collectible term.
function TermData(_NAME, _DESCRIPTION) constructor {
	// Properties
	NAME			= _NAME; // Name of the term
	DESCRIPTION	= _DESCRIPTION; // Description of the term
	
	static getName = function() {			return NAME;    };
	static getDESCRIPTION = function() {	return DESCRIPTION;    };
	
}
