// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function INITIALIZE()	{
	/* Screen	*/						{
		#macro SCREEN_WIDTH  display_get_gui_width()	
		#macro SCREEN_HEIGHT display_get_gui_height()	
	}
	/* Controls	*/						{
	    #macro P1KEY_UP				max(keyboard_check(vk_up),							gamepad_button_check(0,gp_padu),					(gamepad_axis_value(0,gp_axislv) < 0))
	    #macro P1KEY_DOWN			max(keyboard_check(vk_down),						gamepad_button_check(0,gp_padd),					(gamepad_axis_value(0,gp_axislv) > 0))
	    #macro P1KEY_LEFT				max(keyboard_check(vk_left),						gamepad_button_check(0,gp_padl),					(gamepad_axis_value(0,gp_axislh) < 0))
	    #macro P1KEY_RIGHT			max(keyboard_check(vk_right),						gamepad_button_check(0,gp_padr),					(gamepad_axis_value(0,gp_axislh) > 0))
	    #macro P1KEY_UPPRESSED		max(keyboard_check_pressed(vk_up),				gamepad_button_check_pressed(0,gp_padu))
	    #macro P1KEY_DOWNPRESSED	max(keyboard_check_pressed(vk_down),			gamepad_button_check_pressed(0,gp_padd))
	    #macro P1KEY_LEFTPRESSED	max(keyboard_check_pressed(vk_left),				gamepad_button_check_pressed(0,gp_padl))
	    #macro P1KEY_RIGHTPRESSED	max(keyboard_check_pressed(vk_right),			gamepad_button_check_pressed(0,gp_padr))
		#macro P1KEY_START			max(keyboard_check_pressed(vk_enter),			gamepad_button_check_pressed(0, gp_start))
		#macro P1KEY_CONFIRM			max(keyboard_check_pressed(ord("Z")),			gamepad_button_check_pressed(0, gp_face1))
		#macro P1KEY_BACK			max(keyboard_check_pressed(ord("X")),			gamepad_button_check_pressed(0, gp_face2))
		#macro P1KEY_ATTACK			max(keyboard_check_pressed(ord("X")),			gamepad_button_check_pressed(0, gp_face3))
																									
	    #macro P2KEY_UP				max(gamepad_button_check(1, gp_padu),			(gamepad_axis_value(1,gp_axislv) < 0))
	    #macro P2KEY_DOWN			max(gamepad_button_check(1, gp_padd),			(gamepad_axis_value(1,gp_axislv) > 0))
	    #macro P2KEY_LEFT				max(gamepad_button_check(1, gp_padl),				(gamepad_axis_value(1,gp_axislh) < 0))
	    #macro P2KEY_RIGHT			max(gamepad_button_check(1, gp_padr),			(gamepad_axis_value(1,gp_axislh) > 0))
		#macro P2KEY_UPPRESSED		max(gamepad_button_check_pressed(1,gp_padu))
	    #macro P2KEY_DOWNPRESSED	max(gamepad_button_check_pressed(1,gp_padd))
	    #macro P2KEY_LEFTPRESSED	max(gamepad_button_check_pressed(1,gp_padl))
	    #macro P2KEY_RIGHTPRESSED	max(gamepad_button_check_pressed(1,gp_padr))
		#macro P2KEY_START			max(gamepad_button_check_pressed(1, gp_start))
		#macro P2KEY_CONFIRM			max(gamepad_button_check_pressed(1, gp_face1))
		#macro P2KEY_BACK			max(gamepad_button_check_pressed(1, gp_face2))
		#macro P2KEY_ATTACK			max(gamepad_button_check_pressed(1, gp_face3))
	
	    #macro P3KEY_UP				max(gamepad_button_check(2, gp_padu),			(gamepad_axis_value(2, gp_axislv) < 0))
	    #macro P3KEY_DOWN			max(gamepad_button_check(2, gp_padd),			(gamepad_axis_value(2, gp_axislv) > 0))
	    #macro P3KEY_LEFT				max(gamepad_button_check(2, gp_padl),			(gamepad_axis_value(2, gp_axislh) < 0))
	    #macro P3KEY_RIGHT			max(gamepad_button_check(2, gp_padr),			(gamepad_axis_value(2, gp_axislh) > 0))
		#macro P3KEY_UPPRESSED		max(gamepad_button_check_pressed(2, gp_padu))
	    #macro P3KEY_DOWNPRESSED	max(gamepad_button_check_pressed(2, gp_padd))
	    #macro P3KEY_LEFTPRESSED	max(gamepad_button_check_pressed(2, gp_padl))
	    #macro P3KEY_RIGHTPRESSED	max(gamepad_button_check_pressed(2, gp_padr))
		#macro P3KEY_START			max(gamepad_button_check_pressed(2, gp_start))
		#macro P3KEY_CONFIRM			max(gamepad_button_check_pressed(2, gp_face1))
		#macro P3KEY_BACK			max(gamepad_button_check_pressed(2, gp_face2))
		#macro P3KEY_ATTACK			max(gamepad_button_check_pressed(2, gp_face3))
	
	    #macro P4KEY_UP				max(gamepad_button_check(3, gp_padu),			(gamepad_axis_value(3, gp_axislv) < 0))
	    #macro P4KEY_DOWN			max(gamepad_button_check(3, gp_padd),			(gamepad_axis_value(3, gp_axislv) > 0))
	    #macro P4KEY_LEFT				max(gamepad_button_check(3, gp_padl),			(gamepad_axis_value(3, gp_axislh) < 0))
	    #macro P4KEY_RIGHT			max(gamepad_button_check(3, gp_padr),			(gamepad_axis_value(3, gp_axislh) > 0))
		#macro P4KEY_UPPRESSED		max(gamepad_button_check_pressed(3, gp_padu))
	    #macro P4KEY_DOWNPRESSED	max(gamepad_button_check_pressed(3, gp_padd))
	    #macro P4KEY_LEFTPRESSED	max(gamepad_button_check_pressed(3, gp_padl))
	    #macro P4KEY_RIGHTPRESSED	max(gamepad_button_check_pressed(3, gp_padr))
		#macro P4KEY_START			max(gamepad_button_check_pressed(3, gp_start))
		#macro P4KEY_CONFIRM			max(gamepad_button_check_pressed(3, gp_face1))
		#macro P4KEY_BACK			max(gamepad_button_check_pressed(3, gp_face2))
		#macro P4KEY_ATTACK			max(gamepad_button_check_pressed(3, gp_face3))
	}
	globalvar Music, MFX;					{
		Music[0]	= new MusicData("Wonderful LTD. Jingle",sndWonderfulLogo, false)
	}
	globalvar Team;							{
		Team[0]	= new TeamData(c_blue);
		Team[1]	= new TeamData(c_red);
		
		#macro TEAMA Team[0]
		#macro TEAMB Team[1]
	}
	globalvar Character, CharacterType;	{
		CharacterType = ["Speed", "All-Round", "Power"];
		
		Character[0]	= new CharacterData("Toluwani",	"Toluwani D. Adeoti",	CharacterType[0])
		Character[0].SPRITES	= {													
			TV:			sToluwaniTV,
			TVDOWN:		sToluwaniTVDOWN,
			TVUP:			sToluwaniTVUP,
			TVLEFT:		sToluwaniTVLEFT,
			TVRIGHT:		sToluwaniTVRIGHT,
			TVSTUN:		sToluwaniTVSTUN,
			SV:			sToluwaniSV,
			SVDEFEAT:	sToluwaniSVDEFEAT,
			SVIDLE:		sToluwaniSVIDLE,
			SVVICTORY:	sToluwaniSVVICTORY,
			FACE:			sToluwaniFace
		}
		Character[1]	= new CharacterData("Jeremy",	"Jeremy LeFox",			CharacterType[1])
		Character[1].SPRITES	= {
			TV:			sJeremyTV,
			TVDOWN:		sJeremyTVDOWN,
			TVUP:			sJeremyTVUP,
			TVLEFT:		sJeremyTVLEFT,
			TVRIGHT:		sJeremyTVRIGHT,
			TVSTUN:		sJeremyTVSTUN,
			SV:			sJeremySV,
			SVDEFEAT:	sJeremySVDEFEAT,
			SVIDLE:		sJeremySVIDLE,
			SVVICTORY:	sJeremySVVICTORY,
			FACE:			sJeremyFace
		}
		Character[2]	= new CharacterData("Joe",		"Joseph R. Rellavere",	CharacterType[2])
		Character[2].SPRITES	= {
			TV:			sJoeTV,
			TVDOWN:		sJoeTVDOWN,
			TVUP:			sJoeTVUP,
			TVLEFT:		sJoeTVLEFT,
			TVRIGHT:		sJoeTVRIGHT,
			TVSTUN:		sJoeTVSTUN,
			SV:			sJoeSV,
			SVDEFEAT:	sJoeSVDEFEAT,
			SVIDLE:		sJoeSVIDLE,
			SVVICTORY:	sJoeSVVICTORY,
			FACE:			sJoeFace
		}
		Character[3]	= new CharacterData("Nadine",	"Nadine Peru",			CharacterType[0])
		Character[3].SPRITES	= {													
			TV:			sNadineTV,
			TVDOWN:		sNadineTVDOWN,
			TVUP:			sNadineTVUP,
			TVLEFT:		sNadineTVLEFT,
			TVRIGHT:		sNadineTVRIGHT,
			TVSTUN:		sNadineTVSTUN,
			SV:			sNadineSV,
			SVDEFEAT:	sNadineSVDEFEAT,
			SVIDLE:		sNadineSVIDLE,
			SVVICTORY:	sNadineSVVICTORY,
			FACE:			sNadineFace
		}
		Character[4]	= new CharacterData("Natilie",	"Natilie Renalds",		CharacterType[1])
		Character[4].SPRITES	= {
			TV:			sNatilieTV,
			TVDOWN:		sNatilieTVDOWN,
			TVUP:			sNatilieTVUP,
			TVLEFT:		sNatilieTVLEFT,
			TVRIGHT:		sNatilieTVRIGHT,
			TVSTUN:		sNatilieTVSTUN,
			SV:			sNatilieSV,
			SVDEFEAT:	sNatilieSVDEFEAT,
			SVIDLE:		sNatilieSVIDLE,
			SVVICTORY:	sNatilieSVVICTORY,
			FACE:			sNatilieFace
		}
		Character[5]	= new CharacterData("Katie",		"Katie Peru",				CharacterType[1])
		Character[5].SPRITES	= {
			TV:			sKatieTV,
			TVDOWN:		sKatieTVDOWN,
			TVUP:			sKatieTVUP,
			TVLEFT:		sKatieTVLEFT,
			TVRIGHT:		sKatieTVRIGHT,
			TVSTUN:		sKatieTVSTUN,
			SV:			sKatieSV,
			SVDEFEAT:	sKatieSVDEFEAT,
			SVIDLE:		sKatieSVIDLE,
			SVVICTORY:	sKatieSVVICTORY,
			FACE:			sKatieFace
		}
	}
	globalvar Stadium, Cup;					{
		{	// Training Cup
			Stadium[0]	= new StadiumData("Training Arena",			sTrainingArena,		"")
			
			Cup[0]			= new CupData("Training Cup", [Stadium[0]]) 

			#macro TrainingCup Cup[0]
		}
		{	//	White-Hair Cup
			Stadium[1]	= new StadiumData("Wonderville Stadium",	sWondefulStadium,	"")
			Stadium[2]	= new StadiumData("Wonderful Beach",		"",					"")
			Stadium[3]	= new StadiumData("Eka",						"",					"")
			
			Cup[1]			= new CupData("White-Hair",[Stadium[1], Stadium[2], Stadium[3]])
			
			#macro WhiteHairCup Cup[1]
		}		
		{	//	VK Cup
			Stadium[4]	= new StadiumData("VK Island",				"",	"")
			Stadium[5]	= new StadiumData("Great Swamp",			"",	"")
			Stadium[6]	= new StadiumData("Treehouse",				"",	"")
			
			Cup[2]			= new CupData("White-Hair",[Stadium[4], Stadium[5], Stadium[6]])
			
			#macro VKCup Cup[2]
		}
		{	//	Sunset Cup
			Stadium[7]	= new StadiumData("Sunset Arena",			"",	"");
			Stadium[8]	= new StadiumData("Crystal Palace",			"",	"");
			Stadium[9]	= new StadiumData("Skyline Stadium'",		"",	"");
			
			Cup[3]			= new CupData("Sunset Cup",[Stadium[7],Stadium[8],Stadium[9]]);
			
			#macro SunsetCup Cup[3]
		}
	}
	globalvar Mode, Match, Tournament;	{
		Mode = ["Exhibition","Tournament","Special Games"]
		
		Match[0]	= new MatchData("Scored Match",	"The team who reaches the target score before the opponent team wins.", {
			TARGET_SCORE: 5,
		})
		Match[1]	= new MatchData("Timed Match",	"The team with the most points within the time limit wins.", {
			TIME: new TimeData(1,30),
		})
		
		#macro ScoreMatch  Match[0]
		#macro TimedMatch  Match[1]
		
		Tournament = new TournamentData()
	}
	globalvar Term;							{
		Term[0]	= new TermData("Starting",			"The game is top-down. Players are placed on the opposite sides of the stadium.");
		Term[1]	= new TermData("Gameplay",			"To throw the ball, aim with the right stick, and throw with the right shoulder trigger. To block the goal, press the spin attack button to send the ball off-course. Depending on the stage, there are various gimmicks that can affect the gameplay (such as Casino Slots, Icy floor, or Score multiplier).");
		Term[2]	= new TermData("Items",				"Speed-Up: Makes the player faster for a limited time.");
		Term[3]	= new TermData("Scoring",				"If the ball heads to the opponent’s goal, they score a point. If the opponent scores in their own goal, the opposite side scores a point.");
		Term[4]	= new TermData("Ending the game",	"Timed Match: The team with the most points within the time limit wins. Score Match: The team who reaches the target score before the opponent team wins. SUDDEN DEATH: If both teams have the same score in any mode, they will enter sudden death where the next score will end the game.");
		Term[5]	= new TermData("Speed",				"Speed characters are much faster than other types but it is at the cost of power.");
		Term[6]	= new TermData("All-round",			"All-round characters do not excel at any one aspect of the game.");
		Term[7]	= new TermData("Power",				"Power characters are strong, with a sacrifice in speed.");
	}
	globalvar Player;							{
		Player[0]	= new PlayerData(1, c_blue);
		Player[1]	= new PlayerData(2, c_red);
		Player[2]	= new PlayerData(3, c_yellow);
		Player[3]	= new PlayerData(4, c_green);
	}
	globalvar Font;							{
		Font[0] = font_add_sprite(sFont,ord("!"),true,0)	
		Font[1] = font_add_sprite_ext(sFont2," !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~®™©…←↑→↓",true,0)	
		Font[2] = font_add_sprite_ext(sFont3," !\"#$%&'()*+,-./0123456789:;<=>@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~",true,0)	
		Font[3] = font_add_sprite_ext(sFont4,"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz012345678.:,;'!?-`&+[]",true,0)	
	}
	globalvar Current;						{ 
		Current = {
			MODE:				-1,
			MATCH:			-1,
			STADIUM:			-1,
		}
	}
}
