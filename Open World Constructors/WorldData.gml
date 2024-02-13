/// @desc Describes the World and the Missions it contains.
/// @param {string} _Name - The name of the World
/// @param {array<struct.GemData>} _Gems - The gems located in the World.
/// @param {array<struct.GemData>} _HiddenGems - The hidden gems located in the World.
function WorldData(_Name,_Gems,_HiddenGems) constructor {
  NAME = _Name
  GEMS = {
    BASE: _Gems,
    HIDDEN: _HiddenGems
  }

  FIRSTVISIT = true
  COMPLETE = false
  
  // Getters
  static getNAME = function()        {  return NAME  }
  static getGEMS = function()        {  return GEMS.BASE;  }
  static getHIDDENGEMS = function()  {  return GEMS.HIDDEN;  }

}

/// @desc Describes the Gem and it's type.
/// @param {string} _Name - The mission in order to obtain the Gem.
/// @param {real} _Type - The type of Gem. (0 = Normal, 1 = Free Roam, 2 = Ultra, 3 = Distortion Effect, 4 = Secret)
function GemData(_Name,_Type) constructor {
  NAME = _Name
  TYPE = _Type
}
