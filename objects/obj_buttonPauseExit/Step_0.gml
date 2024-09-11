if (position_meeting(mouse_x, mouse_y, self)) {
	
	if(image_speed = 0)
	audio_play_sound(select, 10, false);
	
	image_speed = 1;
}
else {
	if(sprite_index != spr_BtnExtClick){
		image_speed = 0;
		image_index = 1;
	}
}

if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	
	sprite_index = spr_BtnExtClick;
	if(image_speed != 0)
	audio_play_sound(start, 11, false);
	
	alarm[0] = 90;
	
	
}