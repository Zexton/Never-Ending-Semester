if(pauseIsEnabled) {
	if (obj_char.Esc) {
		switch gameState
		{
		    case playState.Pause:
				paused = false;
				gameState = playState.Play;
				image_speed = 1
				obj_char.up = keyboard_check(vk_up);
				obj_char.down = keyboard_check(vk_down);
				obj_char.left = keyboard_check(vk_left);
				obj_char.right = keyboard_check(vk_right);
				obj_char.E = keyboard_check_pressed(ord("E"));
				sprite_index = noone;
				instance_destroy(obj_buttonPauseExit);
				obj_charProfile.kb_E = keyboard_check_pressed(ord("E"));
				if(obj_char.sprite_index == spr_char_right) { obj_char.sprite_index = spr_charright_idle;}
			
				if(obj_char.sprite_index == spr_char_left) { obj_char.sprite_index = spr_charleft_idle;}
			
				if(obj_char.sprite_index == spr_char_down) { obj_char.sprite_index = spr_char;}
			
				if(obj_char.sprite_index == spr_char_up) { obj_char.sprite_index = spr_charup_idle;}
				break;

		    case playState.Play:
				paused = true;
				gameState = playState.Pause
				obj_char.image_speed = 0;
				image_speed = 0;
				obj_char.up = 0;
				obj_char.down = 0;
				obj_char.left = 0;
				obj_char.right = 0;
				obj_char.E = 0;
				obj_charProfile.kb_E = 0;
				sprite_index = spr_paused;
				instance_create_layer(680, 415, "Instances_pauseButtons", obj_buttonPauseExit);
				audio_play_sound(select, 10, 0);
				break;
		}
	}
}