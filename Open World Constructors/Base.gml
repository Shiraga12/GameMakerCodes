function HubData(_Name,_Worlds) constructor {
  NAME = _Name
  WORLDS = _Worlds
}

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

  static getGEM = function(_i)        {  return GEMS.BASE[_i];  }
  static getHIDDENGEM = function(_i)  {  return GEMS.HIDDEN[_i];  }

}

/// @desc Describes the Gem and it's type.
/// @param {string} _Name - The name of the mission.
/// @param {real} _Type - The type of Gem. (0: Normal, 1: Ultra Gem, 2: Green Gem, 3: Red Gem, 4: Speedy Distortion Effect, 5: Daredevil Distortion Effect, 6: Cosmic Distortion Effect, 7: Fast-Foe Distortion Effect, 8: Purple Distortion Effect, 9: Intramissionary Secret Gem)
function GemData(_Name,_Type) constructor {
  NAME = _Name
  TYPE = _Type

  CLEARED = false
  HIGH_SCORE = 0
}
