if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	if(sprite_index == spr_optD){
		global.PlayerChose = true;
	
		if(amICorrect) {
			sprite_index = spr_optDCorrect;
			global.correctGuess++;
			if(obj_optA.sprite_index == spr_optA) { obj_optA.sprite_index = spr_optA_Disabled }
			if(obj_optB.sprite_index == spr_optB) { obj_optB.sprite_index = spr_optB_Disabled }
			if(obj_optC.sprite_index == spr_optC) { obj_optC.sprite_index = spr_optC_Disabled }
		}
		else {
		
			sprite_index = spr_optDWrong;
			score = floor(score - obj_quizScore.deduction);
			if(global.tries != 3)
				global.tries++;
		}
	}
}

if(global.tries == 3 && amICorrect) {
	sprite_index = spr_optDCorrect;
}