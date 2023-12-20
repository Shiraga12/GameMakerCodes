// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @desc Tournament data constructor.
function TournamentData() constructor {
	CUP				= -1;	// Identifier for the tournament cup
	
	for (var i = 0; i < 8; ++i) {
	    PLAYERS[i] = new TournamentPlayer() // Array to store tournament players
	}

	QUARTERFINALS	= [];	// Array to store quarterfinal brackets (4 brackets)
	SEMIFINALS		= [];	// Array to store semifinal brackets (2 brackets)
	FINALS			= -1;	// Identifier for the final bracket (1 bracket)
	
	WINNER			= -1;	// Identifier for the tournament winner
	
	// Getters
	static getCUP				= function()	{ return CUP; } // Getter for the tournament cup
	static getPLAYERS			= function()	{ return PLAYERS; } // Getter for the tournament players
    static getPLAYER			= function(_i)	{ return PLAYERS[_i]; } // Getter for a specific player
    static getQUARTERFINALS	= function()	{ return QUARTERFINALS; } // Getter for the quarterfinal brackets
    static getSEMIFINALS		= function()	{ return SEMIFINALS; } // Getter for the semifinal brackets
    static getFINALS				= function()	{ return FINALS; } // Getter for the final bracket
    static getWINNER			= function()	{ return WINNER; } // Getter for the tournament winner
	
	// Setters
    static setSEMIFINALS		= function(_BRACKET1, _BRACKET2) { SEMIFINALS = [_BRACKET1, _BRACKET2]; } // Setter for the semifinal brackets
    static setFINALS				= function(_BRACKET1) { FINALS = _BRACKET1; } // Setter for the final bracket
    static setWINNER			= function(_WINNER) { WINNER = _WINNER; } // Setter for the tournament winner
}

/// @desc Tournament player constructor.
/// @param {string}	NAME			- The name of the player.
/// @param {string}	CHARACTER	- The character chosen by the player.
/// @param {bool}		CPU			- Flag indicating whether the player is controlled by the CPU (default is true).
function TournamentPlayer(_NAME = "", _CHARACTER = -1, _CPU = true) constructor {
	NAME			=	_NAME;
	CHARACTER	=	_CHARACTER;
	CPU			=	_CPU;
	
	static getNAME			= function() { return NAME; } // Getter for the player's name
	static getCHARACTER	= function() { return CHARACTER; } // Getter for the player's chosen character
	static getCPU			= function() { return CPU; } // Getter for the CPU flag
	
	static isCPU			= function() { return CPU = true; } // Static method to check if the player is controlled by the CPU
}

/// @desc Tournament bracket constructor.
/// @param {struct.TournamentPlayer}	PLAYER1 - The first player in the bracket.
/// @param {struct.TournamentPlayer}	PLAYER2 - The second player in the bracket.
/// @param {struct.ModeData}			MODE    - The game mode of the match. (Scored or Timed)
/// @param {struct.StadiumData}			STADIUM - The stadium where the match takes place.
function TournamentBracket(_PLAYER1, _PLAYER2, _MODE, _STADIUM) constructor {
    PLAYER1			= _PLAYER1;
    PLAYER2			= _PLAYER2;
    MODE				= _MODE;
    STADIUM			= _STADIUM;
    MATCH_STATUS	= "Upcoming"; // Initial status, can be "Upcoming", "InProgress", "Completed", etc.
    RESULT			= undefined; // To store the result of the match

    // Getters
    static getPLAYER1			= function() { return PLAYER1; } // Getter for the first player
    static getPLAYER2			= function() { return PLAYER2; } // Getter for the second player
    static getMODE				= function() { return MODE; } // Getter for the game mode
    static getSTADIUM			= function() { return STADIUM; } // Getter for the stadium
    static getMATCH_STATUS	= function() { return MATCH_STATUS; } // Getter for the match status
    static getRESULT			= function() { return RESULT; } // Getter for the match result

    // Setters
    static setMATCH_STATUS	= function(_status) { MATCH_STATUS = _status; } // Setter for the match status
    static setRESULT			= function(_result) { RESULT = _result; } // Setter for the match result
	
	/// @desc Create a new bracket with the winner and the other winner of the previous bracket.
	/// @param {TournamentPlayer} _otherWinner - The winner of the other bracket.
	static createNextBracket	=	function(_otherWinner) {
	    var winner = (RESULT == "Player1 wins") ? PLAYER1 : PLAYER2;
	
	    // Create a new bracket with the winner and the other winner of the previous bracket
	    var nextBracket = new TournamentBracket(winner, _otherWinner, MODE, STADIUM);
	    nextBracket.setMATCH_STATUS("Upcoming");
	
	    // Return the new bracket
	    return nextBracket;
	}
	
	/// @desc Set the match result and update the match status to "Completed".
	/// @param {string} _result - The result of the match ("Player1 wins", "Player2 wins", etc.).
	static setMatchResult = function(_result) {
	    RESULT = _result;
	    MATCH_STATUS = "Completed";
	}

	static startMatch = function() {
		Current.MODE = self.getMODE();
		Current.STADIUM = self.getSTADIUM();
		Current.TOURNAMENT = true;
		
		Player[0].setCHARACTER(PLAYER1.getCHARACTER())
		Player[0].setCPU(PLAYER1.getCPU())
		
		Player[1].setCHARACTER(PLAYER2.getCHARACTER())
		Player[1].setCPU(PLAYER2.getCPU())
		
		room_goto(rmVersusScreen)
	}
}
