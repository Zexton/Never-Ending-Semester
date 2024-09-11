//depth = -y;

up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
E = keyboard_check_pressed(ord("E"));
Esc = keyboard_check_pressed(vk_escape);

//movement
x=clamp(x, 0, room_width);
y=clamp(y, 0, room_height);

switch currentState
{
    case PlayerState.Move:
        up = keyboard_check(vk_up);
		down = keyboard_check(vk_down);
		left = keyboard_check(vk_left);
		right = keyboard_check(vk_right);
		E = keyboard_check_pressed(ord("E"));
		Esc = keyboard_check_pressed(vk_escape);
		obj_charProfile.kb_E = keyboard_check_pressed(ord("E"));
		image_speed = 1;
		break;

    case PlayerState.Talk:
        up = 0;
		down = 0;
		left = 0;
		right = 0;
		E = 0;
		Esc = 0;
		obj_charProfile.kb_E = 0;
		image_speed = 0;
		break;
}



if (currentState = PlayerState.Move && obj_pauseMenu.gameState = playState.Play){
	if (down && place_free(x, y  + collisionSpeed)) {
		y += sp;
		image_speed = sp / 3;
		if(!place_free(x, y  + collisionSpeed)) { sprite_index = spr_char; }
		else { sprite_index = spr_char_down; }
	} else if (keyboard_check_released(vk_down)) {
		sprite_index = spr_char;
	}

	if (up && place_free(x, y  - collisionSpeed)) {
		y -= sp;
		image_speed = sp / 3;
		if(!place_free(x, y  - collisionSpeed)) { sprite_index = spr_charup_idle; }
		else { sprite_index = spr_char_up; }
	} else if (keyboard_check_released(vk_up)) {
		sprite_index = spr_charup_idle;
	}

	if (left && place_free(x - collisionSpeed, y)) {
		x -= sp;
		image_speed = sp / 3;
		if(!place_free(x  - collisionSpeed, y)) { sprite_index = spr_charleft_idle; }
		else { sprite_index = spr_char_left; }
	} else if (keyboard_check_released(vk_left)) {
		sprite_index = spr_charleft_idle;
	}

	if (right && place_free(x + collisionSpeed, y)) {
		x += sp;
		image_speed = sp / 3;
		if(!place_free(x  + collisionSpeed, y)) { sprite_index = spr_charright_idle; }
		else { sprite_index = spr_char_right; }
	} else if (keyboard_check_released(vk_right)) {
		sprite_index = spr_charright_idle;
	}

	if(right && left) {
		if(down){ sprite_index = spr_char_down;	}
		else if (up) { sprite_index = spr_char_up }
		else { sprite_index = spr_char; }
	}

	if(down && up) {
		if(left){ sprite_index = spr_char_left;	}
		else if (right) { sprite_index = spr_char_right }
		else { sprite_index = spr_char; }
	}
} else { image_speed = 0; }

	