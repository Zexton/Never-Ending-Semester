if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {

	instance_destroy(obj_desktop);
	obj_pauseMenu.pauseIsEnabled = true;
	
	instance_destroy(obj_optA);
	instance_destroy(obj_optB);
	instance_destroy(obj_optC);
	instance_destroy(obj_optD);
	instance_destroy(obj_textA);
	instance_destroy(obj_textB);
	instance_destroy(obj_textC);
	instance_destroy(obj_textD);
	instance_destroy(obj_questionBox);
	instance_destroy(obj_nextButton);
	instance_destroy(obj_quizTotal);
	instance_destroy(obj_quizScore);
	instance_destroy(obj_quizSubjectPicker);
	instance_destroy(id);
	
	global.currentQuestion = 0;
	global.correctGuess = 0;
	obj_char.currentState = PlayerState.Move;
	
}