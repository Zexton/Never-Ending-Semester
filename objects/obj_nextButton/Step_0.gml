	if(global.tries == 3 || obj_optA.sprite_index == spr_optACorrect 
	|| obj_optB.sprite_index == spr_optBCorrect || obj_optC.sprite_index == spr_optCCorrect
	|| obj_optD.sprite_index == spr_optDCorrect) {
	
			sprite_index = spr_nextEnabled;
	
			if(position_meeting(mouse_x, mouse_y, self))
				sprite_index = spr_nextHover;
			else
				sprite_index = spr_nextEnabled;
	
	
}else
	sprite_index = spr_nextDisabled;

if(position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left) && sprite_index = spr_nextHover) {

	if( global.currentQuestion < questionSize) {

		instance_destroy(obj_optA);
		instance_destroy(obj_optB);
		instance_destroy(obj_optC);
		instance_destroy(obj_optD);

		instance_destroy(obj_textA);
		instance_destroy(obj_textB);
		instance_destroy(obj_textC);
		instance_destroy(obj_textD);

		instance_destroy(obj_questionBox);
		global.currentQuestion++;
		instance_create_layer(320, 128, "instances_pauseButtons", obj_questionBox);

		instance_create_layer(304, 224, "instances_pauseButtons", obj_optA);
		instance_create_layer(304, 448, "instances_pauseButtons", obj_optB);
		instance_create_layer(945, 224, "instances_pauseButtons", obj_optC);
		instance_create_layer(945, 448, "instances_pauseButtons", obj_optD);
									
		instance_create_layer(337, 213, "instances_pauseButtons", obj_textA);
		instance_create_layer(337, 426, "instances_pauseButtons", obj_textB);
		instance_create_layer(976, 213, "instances_pauseButtons", obj_textC);
		instance_create_layer(976, 426, "instances_pauseButtons", obj_textD);
		
	}
	else {
		instance_create_layer(684, 383, "instances_pauseButtons", obj_quizTotal);
	}
	
	global.tries = 0;
}