if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	global.Questions = obj_mathadd.questions;
	
	instance_destroy(obj_quizSubjectPicker)	;
	
	
	instance_create_layer(320, 128, "instances_pauseButtons", obj_questionBox);
	
	instance_create_layer(304, 224, "instances_pauseButtons", obj_optA);
	instance_create_layer(304, 448, "instances_pauseButtons", obj_optB);
	instance_create_layer(945, 224, "instances_pauseButtons", obj_optC);
	instance_create_layer(945, 448, "instances_pauseButtons", obj_optD);
													
	instance_create_layer(337, 213, "instances_pauseButtons", obj_textA);
	instance_create_layer(337, 426, "instances_pauseButtons", obj_textB);
	instance_create_layer(976, 213, "instances_pauseButtons", obj_textC);
	instance_create_layer(976, 426, "instances_pauseButtons", obj_textD);
	
	instance_create_layer(1000, 580, "instances_pauseButtons", obj_nextButton);
	instance_create_layer(266, 630, "instances_pauseButtons", obj_quizScore);
	
	instance_destroy(id);
}

if(!instance_exists(obj_quizSubjectPicker)) { instance_destroy(id); }