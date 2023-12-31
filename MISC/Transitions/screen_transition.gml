// Constants for transition types
enum TR_TYPE {
    // Existing Transition Types
    FADE,
    WIPE_LEFT,
    WIPE_RIGHT,
    WIPE_UP,
    WIPE_DOWN,
    SLIDE_LEFT,
    SLIDE_RIGHT,
    SLIDE_UP,
    SLIDE_DOWN,
    ZOOM,
    CARTOON_IRIS,
    LOGO_IRIS,
    SCALE,

    // Additional Transition Types
    FLIP_HORIZONTAL,        // Flip horizontally transition
    FLIP_VERTICAL,          // Flip vertically transition
    ROTATE_LEFT,            // Rotate left transition
    ROTATE_RIGHT,           // Rotate right transition
    BOUNCE,                 // Bounce transition
    BLINK,                  // Blink transition
    PIXELATE,               // Pixelate transition
    CROSS_FADE,             // Cross fade transition
    DISSOLVE,               // Dissolve transition
    SWAP,                   // Swap transition
    SHAKE,                  // Shake transition
    FADE_COLOR,             // Fade color transition
    // Add more transition types as needed
};

// Constants for transition ways
enum TR_WAY {
    IN,
    OUT
};

/// @desc  CREATE TRANSITION FUNCTION
/// @param {any*}				Type1		The transition type index.
/// @param {any*}				Type2		The transition type index.
/// @param {constant.color}	Color		The color to draw the transition.
/// @param {function}			Callback1	First function that will be executed.
/// @param {function}			Callback2	Second Function that will be executed.
/// @param {real}				Logo		Logo to use. (For TR_TYPE.LOGO_IRIS Only!)
/// @param {real}				Speed		Transition speed (range goes from 0 to infinite).
/// @returns {id} Description
function screen_transition(_type1, _type2, _color = c_black, _callback1 = function() {}, _callback2 = function() {}, _logo = -1, _speed = 0.01) {
	// Handle optional parameters with default values
	Type1			=	_type1;
	Type2			=	_type2;
    Color			=	_color;
    Callback1		=	_callback1;
    Callback2		=	_callback2;
	Logo			=	_logo;
    Speed			=	_speed;

    var TRANSITION = instance_create_depth(0,0,-9999,oTransition)
	TRANSITION.Type1		=	Type1			
	TRANSITION.Type2		=	Type2	
	TRANSITION.Type			=	Type1
	TRANSITION.Color			=	Color			
	TRANSITION.Callback1	=	Callback1		
	TRANSITION.Callback2	=	Callback2		
	TRANSITION.Logo			=	Logo		
	TRANSITION.Speed		=	Speed		
	
	// Example usage of the parameters:
    show_debug_message("Transition Type 1: " + string(Type1));
    show_debug_message("Transition Type 2: " + string(Type2));
    show_debug_message("Color: " + string(Color));
    show_debug_message("Callback 1: " + string(Callback1));
    show_debug_message("Callback 2: " + string(Callback2));
    show_debug_message("Speed: " + string(Speed));
	
	return TRANSITION;
	
}

function screen_transition_exists(index)						{}
function screen_transition_destroy(index, forced)					{}
function screen_transition_set_color(index, color)					{}
function screen_transition_set_progress(index, progress)				{}
function screen_transition_set_speed(index, speed)					{}
function screen_transition_set_render_surface(surface_id)				{}
function screen_transition_set_pause(index, pause)					{}
function screen_transition_get_color(index) 						{}
function screen_transition_get_progress(index) 						{}
function screen_transition_get_speed(index) 						{}
function screen_transition_get_render_surface() 					{}
function screen_transition_is_paused(index) 						{}
function screen_transition_modify(transition_instance, vars_array, values_array)	{}
/// @desc  SET TRANSITION LOGO
/// @param {id}     index    The index of the screen transition.
/// @param {asset.GMsprite}   newLogo  The new logo to set for the transition.
/// @returns {void}           Description
function screen_transition_set_logo(index, newLogo) {
    if (instance_exists(index)) {
        index.Logo = newLogo;
        show_debug_message("Set Logo for Transition: " + string(newLogo));
    } else {
        show_debug_message("Error: Invalid transition instance.");
    }
}