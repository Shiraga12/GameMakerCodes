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
function GameEventLogData(_eventType, _description, _timestamp) constructor {
    EVENT_TYPE = _eventType;
    DESCRIPTION = _description;
    TIMESTAMP = _timestamp;
    
    static getEventType = function() { return EVENT_TYPE; };
    static getDescription = function() { return DESCRIPTION; };
    static getTimestamp = function() { return TIMESTAMP; };
}
function GameRoundData(_roundNumber, _startTime, _endTime, _events) constructor {
    ROUND_NUMBER = _roundNumber;
    START_TIME = _startTime;
    END_TIME = _endTime;
    EVENTS = _events; // An array of GameEventLogData instances
    
    static getRoundNumber = function() { return ROUND_NUMBER; };
    static getStartTime = function() { return START_TIME; };
    static getEndTime = function() { return END_TIME; };
    static getEvents = function() { return EVENTS; };
}
function GameStatisticsData(_goals, _saves, _assists, _playerStats) constructor {
    GOALS = _goals;
    SAVES = _saves;
    ASSISTS = _assists;
    PLAYER_STATS = _playerStats; // An array of PlayerStatisticsData instances
    
    static getGoals = function() { return GOALS; };
    static getSaves = function() { return SAVES; };
    static getAssists = function() { return ASSISTS; };
    static getPlayerStats = function() { return PLAYER_STATS; };
}
function PlayerStatisticsData(_player, _goals, _saves, _assists) constructor {
    PLAYER = _player;
    GOALS = _goals;
    SAVES = _saves;
    ASSISTS = _assists;
    
    static getPlayer = function() { return PLAYER; };
    static getGoals = function() { return GOALS; };
    static getSaves = function() { return SAVES; };
    static getAssists = function() { return ASSISTS; };
}
function GameSettingsData(_difficulty, _gameSpeed, _maxScore, _timeLimit) constructor {
    DIFFICULTY = _difficulty;
    GAME_SPEED = _gameSpeed;
    MAX_SCORE = _maxScore;
    TIME_LIMIT = _timeLimit;
    
    static getDifficulty = function() { return DIFFICULTY; };
    static getGameSpeed = function() { return GAME_SPEED; };
    static getMaxScore = function() { return MAX_SCORE; };
    static getTimeLimit = function() { return TIME_LIMIT; };
}
function PlayerInputSettingsData(_player, _controls) constructor {
    PLAYER = _player;
    CONTROLS = _controls; // An object specifying the player's control settings
   
    static getPlayer = function() { return PLAYER; };
    static getControls = function() { return CONTROLS; };
}
function GameResultData(_winningTeam, _losingTeam, _gameStatistics) constructor {
    WINNING_TEAM = _winningTeam;
    LOSING_TEAM = _losingTeam;
    GAME_STATISTICS = _gameStatistics; // A GameStatisticsData instance
   
    static getWinningTeam = function() { return WINNING_TEAM; };
    static getLosingTeam = function() { return LOSING_TEAM; };
    static getGameStatistics = function() { return GAME_STATISTICS; };
}
