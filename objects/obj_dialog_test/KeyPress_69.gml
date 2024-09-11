if(distance_to_object(obj_char) < 25) {
	var _inst = instance_create_layer(x, y, layer, obj_dialog);
	with(_inst)
	    {
	    text[0] = "This is some text";
	    text[1] = "This is more text";
	    text[2] = "This is yet more text";
	    text[3] = "I talk too much!";
	    text_last = 3;
	    text_width = 150;
	    text_x = x;
	    text_y = y;
	    text[text_current] = string_wrap(text[text_current], text_width);
	    }
}