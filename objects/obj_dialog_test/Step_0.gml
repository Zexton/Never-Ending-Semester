if(obj_char.E && distance_to_object(obj_char) < 25) {
	if(obj_char.x > x && obj_char.sprite_index == spr_charleft_idle ||
	   obj_char.x < x && obj_char.sprite_index == spr_charright_idle ||
	   obj_char.y > y && obj_char.sprite_index == spr_charup_idle ||
	   obj_char.y < y && obj_char.sprite_index == spr_char) 
	{
	
		var _inst = instance_create_layer(x, y, layer, obj_dialog);
	
		with(_inst)
		{
		    text[0] = "This is some text";
		    text[1] = "This is more text";
		    text[2] = "This is yet more text";
		    text[3] = "I talk too much!";
		    text_last = 3;
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