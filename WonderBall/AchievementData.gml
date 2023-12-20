function AchievementData(_NAME,_DESCRIPTION,_TRIGGER) constructor{
	NAME			=	_NAME
	DESCRIPTION	=	_DESCRIPTION
	TRIGGER		=	_TRIGGER
	
	static getNAME			= function() { return NAME			}
	static getDESCRIPTION	= function() { return DESCRIPTION	}
	static getTRIGGER		= function() { return TRIGGER		}
}
