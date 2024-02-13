/// @desc Describes the World and the Missions it contains.
/// @param {string} _Name - The name of the World
/// @param {array<struct.GemData>} _Missions - The gems located in the World.
/// @param {array<struct.GemData>} _HiddenMissions - The hidden gems located in the World.
function WorldData(_Name,_Missions,_HiddenMissions) constructor {
  NAME = _Name
  GEMS = {
    BASE: _Gems,
    HIDDEN: _HiddenGems
  }

  FIRSTVISIT = true
  COMPLETE = false
  
  // Getters
  static getNAME = function()        {  return NAME  }
  static getGEMS = function()        {  return MISSIONS.BASE;  }
  static getHIDDENGEMS = function()  {  return MISSIONS.HIDDEN;  }

}
