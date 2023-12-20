///Create a MusicData object.
///@param {string}			Name		- The name of the music.
///@param {asset.GMSound}	SoundFile	- The sound file associated with the music.
///@param {bool}			Loops		- Determine whether or not the music loops.
function MusicData(_Name,_SoundFile,_Loops = true) constructor	{
	Name		=	_Name	
	SoundFile	=	_SoundFile
	Loops		=	_Loops
	
	static getName		=	function()	{	return Name		}
	static getSoundFile	=	function()	{	return SoundFile	}
	static getLoops		=	function()	{	return Loops		}
	
	static play			=	function()	{	audio_play_sound(SoundFile,10,Loops)	}
	static pause			=	function()	{	audio_pause_sound(SoundFile)	}

	/// Convert the MusicData to a string representation.
    /// @return {string} The string representation of the MusicData.
    static toString = function() {
        return "{MusicData} Name: " + Name + ", Loops: " + string(Loops);
    }
}