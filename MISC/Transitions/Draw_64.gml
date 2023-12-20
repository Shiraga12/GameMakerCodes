/// @description Draw GUI Event
// You can write your code in this editor
global.SCREEN_SURFACE = surface_create(SCREEN_WIDTH,SCREEN_HEIGHT)

switch(Type) {
    case TR_TYPE.FADE: {
		draw_set_alpha(progress)
        draw_rectangle_color(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, Color, Color, Color, Color, false);
        break;
	}
    case TR_TYPE.WIPE_DOWN: {
        draw_rectangle_color(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT * progress, Color, Color, Color, Color, false);
        break;
	}
    case TR_TYPE.WIPE_LEFT: {
        draw_rectangle_color(0, 0, SCREEN_WIDTH * progress, SCREEN_HEIGHT, Color, Color, Color, Color, false);
        break;
	}
    case TR_TYPE.WIPE_RIGHT: {
        draw_rectangle_color(SCREEN_WIDTH - SCREEN_WIDTH * progress, 0, SCREEN_WIDTH, SCREEN_HEIGHT, Color, Color, Color, Color, false);
        break;
	}
    case TR_TYPE.WIPE_UP: {
        draw_rectangle_color(0, SCREEN_HEIGHT - SCREEN_HEIGHT * progress, SCREEN_WIDTH, SCREEN_HEIGHT, Color, Color, Color, Color, false);
        break;
	}
	case TR_TYPE.SLIDE_LEFT: {
        draw_rectangle_color(-SCREEN_WIDTH * progress, 0, SCREEN_WIDTH, SCREEN_HEIGHT, Color, Color, Color, Color, false);
        break;
	}
    case TR_TYPE.SLIDE_RIGHT: {
        draw_rectangle_color(SCREEN_WIDTH * progress, 0, SCREEN_WIDTH, SCREEN_HEIGHT, Color, Color, Color, Color, false);
        break;
	}
    case TR_TYPE.SLIDE_UP: {
        draw_rectangle_color(0, -SCREEN_HEIGHT * progress, SCREEN_WIDTH, SCREEN_HEIGHT, Color, Color, Color, Color, false);
        break;
	}
    case TR_TYPE.SLIDE_DOWN: {
        draw_rectangle_color(0, SCREEN_HEIGHT + SCREEN_HEIGHT * progress, SCREEN_WIDTH, SCREEN_HEIGHT, Color, Color, Color, Color, false);
        break;
	}
	case TR_TYPE.ZOOM: {
        // Add your implementation for ZOOM_IN transition
        draw_rectangle_color(0, 0, SCREEN_WIDTH * progress, SCREEN_HEIGHT * progress, Color, Color, Color, Color, false);
        break;
	}
	case TR_TYPE.CARTOON_IRIS: {
		// Create a surface
		var surface = -1;
		
		// Set the target surface
		surface_set_target(global.SCREEN_SURFACE);
		
		// Draw the black background on the surface
		draw_rectangle_color(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, c_black, c_black, c_black, c_black, false);
		
		// Set the blend mode to subtractive
		gpu_set_blendmode(bm_subtract);
		
		// Calculate the radius based on the progress (shrink effect)
		var circleRadius = SCREEN_HEIGHT * (1 - progress);
		var centerX = SCREEN_WIDTH / 2;
		var centerY = SCREEN_HEIGHT / 2;
		
		// Draw a white circle on the surface to cut out
		draw_circle(centerX, centerY, circleRadius, false);
		
		// Reset blend mode
		gpu_set_blendmode(bm_normal);
		
		// Reset the target surface
		surface_reset_target();
		
		// Draw the surface on the screen
		draw_surface(global.SCREEN_SURFACE, 0, 0);
		
		// Free the surface
		surface_free(global.SCREEN_SURFACE);
		
		break;
	}
	case TR_TYPE.LOGO_IRIS: {
		//draw_set_alpha(progress)

		// Create a surface
		var surface = -1;
		
		// Set the target surface
		surface_set_target(global.SCREEN_SURFACE);
		
		// Draw the black background on the surface
		draw_rectangle_color(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, c_black, c_black, c_black, c_black, false);
		
		// Set the blend mode to subtractive
		gpu_set_blendmode(bm_subtract);
		
		// Calculate the radius based on the progress (shrink effect)
		var logoScale = 1 - progress; // Adjust the scale based on your desired effect
		var centerX = SCREEN_WIDTH / 2;
		var centerY = SCREEN_HEIGHT / 2;
		
		// Draw the black and white logo on the surface to cut out
		// Replace the following line with the actual drawing code for your logo
		draw_sprite_ext(Logo, 0, centerX, centerY, logoScale*8, logoScale*8, 0 , c_white, 1);
		
		// Reset blend mode
		gpu_set_blendmode(bm_normal);
		
		// Reset the target surface
		surface_reset_target();
		
		// Draw the surface on the screen
		draw_surface(global.SCREEN_SURFACE, 0, 0);
		
		// Free the surface
		surface_free(global.SCREEN_SURFACE);
		
		break;
	}
	case TR_TYPE.SCALE: {
	    // Add your implementation for SCALE transition
		if Way = TR_WAY.IN {
			var scale = lerp(1, 0, progress); // Use lerp to smoothly scale from 1 to 0 based on progress
		}
		else {
			var scale = lerp(0, 1, progress); // Use lerp to smoothly scale from 0 to 1 based on progress		
		}
	    // Set the target surface
	    surface_set_target(global.SCREEN_SURFACE);
	    
	    // Draw the scaled surface
	    draw_surface_stretched(global.SCREEN_SURFACE, 0, 0, SCREEN_WIDTH*scale, SCREEN_HEIGHT*scale);
	   
	    // Reset the target surface
	    surface_reset_target();
	    
	    // Draw the scaled surface on the screen
	    draw_surface(global.SCREEN_SURFACE, 0, 0);
	
	    // Free the surface
	    surface_free(global.SCREEN_SURFACE);
	    break;
	}
}