/// @description Create Event
Type1	= TR_TYPE.FADE;        // Default transition type
Type2	= TR_TYPE.FADE;        // Default transition type
Type	= Type1
Way	= TR_WAY.IN;            // Default transition way
Color	= c_black;            // Default color
Callback1 = function() {};   // Default callback function
Callback2 = function() {};   // Default callback function
Speed = 0.01;                // Default transition speed
Logo = -1
AnimCurve = __ac_ftr_quart;// Default animation curve
if Way == TR_WAY.IN { 
    progress = 0;               // Initialize progress
}	else { 
    progress = 1;               // Initialize progress
}
