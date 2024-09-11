if(!instance_exists(obj_quizTotal)) {
	if(score >= 0) draw_text(266,630, "POINTS: " + string(score));
	else draw_text(266,630, "POINTS: " + string(0));
} else {
	 if(score >= 0) draw_text(325,440, "POINTS: " + string(score) + "/100");
	else draw_text(420,440, "POINTS: " + string(0) + "/100");
}