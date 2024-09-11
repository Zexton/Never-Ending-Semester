if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	
	sprite_index = spr_quizApp;
	instance_create_layer(600, 400, "Instances_pauseButtons", obj_quizSubjectPicker);
}