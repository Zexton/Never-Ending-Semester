if(obj_char.E && distance_to_object(obj_char) < 25) {
	
	obj_char.currentState = PlayerState.Talk;
	instance_create_layer(683, 400, "instances_pause", obj_desktop);
	instance_create_layer(1175, 100, "instances_pauseButtons", obj_exitQuiz);
}