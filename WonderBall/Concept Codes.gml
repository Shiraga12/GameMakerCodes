function TeamMatchData(_name, _description, _color) constructor {
    NAME = _name;
    DESCRIPTION = _description;
    COLOR = _color;
    
    static getName = function() { return NAME; };
    static getDescription = function() { return DESCRIPTION; };
    static getColor = function() { return COLOR; };
}
function GameSettingsData(_speed, _power, _tricky, _echo) constructor {
    SPEED = _speed;
    POWER = _power;
    TRICKY = _tricky;
    ECHO = _echo;
    
    static getSpeed = function() { return SPEED; };
    static getPower = function() { return POWER; };
    static getTricky = function() { return TRICKY; };
    static getEcho = function() { return ECHO; };
}
function GameResultData(_winner, _loser, _score) constructor {
    WINNER = _winner;
    LOSER = _loser;
    SCORE = _score;
    
    static getWinner = function() { return WINNER; };
    static getLoser = function() { return LOSER; };
    static getScore = function() { return SCORE; };
}
function BallData(_speed, _size, _color) constructor {
    SPEED = _speed;
    SIZE = _size;
    COLOR = _color;
    
    static getSpeed = function() { return SPEED; };
    static getSize = function() { return SIZE; };
    static getColor = function() { return COLOR; };
}
