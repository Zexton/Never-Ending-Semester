if(obj_charProfile.kb_E && distance_to_object(obj_char) < 25 && obj_pauseMenu.paused != true) {
	if(obj_char.x > x && obj_char.sprite_index == spr_charleft_idle ||
	   obj_char.x < x && obj_char.sprite_index == spr_charright_idle ||
	   obj_char.y > y && obj_char.sprite_index == spr_charup_idle ||
	   obj_char.y < y && obj_char.sprite_index == spr_char) 
	{
	

	
		var _inst = instance_create_layer(x, y, layer, obj_dialog);
	
		if(obj_char.x > x && obj_char.sprite_index == spr_charleft_idle) { sprite_index = spr_char2right_idle;}
		
		if(obj_char.x < x && obj_char.sprite_index == spr_charright_idle) { sprite_index = spr_char2left_idle;}
		
		if(obj_char.y > y && obj_char.sprite_index == spr_charup_idle) { sprite_index = spr_char2;}
		
		if(obj_char.y < y && obj_char.sprite_index == spr_char) { sprite_index = spr_char2up_idle;}
		
		with(_inst)
		{
		    text[0] = "Hello " + obj_charProfile.charName;
		    text_last = 0;
		    text_width = 400;
			text_x = x;
			
			if(obj_char.y < y / 1.1)
			{
			
				obj_char.sprite_index = spr_char;
				text_y = y + obj_char.y / 5.25;
			}
			else { text_y = y / 1.5; }

		    text[text_current] = string_wrap(text[text_current], text_width);
		}	
	}
}