if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	if(sprite_index == spr_optB){
		global.PlayerChose = true;
	
		if(amICorrect) {
			sprite_index = spr_optBCorrect;
			global.correctGuess++;
			if(obj_optA.sprite_index == spr_optA) { obj_optA.sprite_index = spr_optA_Disabled }
			if(obj_optD.sprite_index == spr_optD) { obj_optD.sprite_index = spr_optD_Disabled }
			if(obj_optC.sprite_index == spr_optC) { obj_optC.sprite_index = spr_optC_Disabled }
		}
		else {
		
			sprite_index = spr_optBWrong;
			score = floor(score - obj_quizScore.deduction);
			if(global.tries != 3)
				global.tries++;
		}
	}
}
if(global.tries == 3 && amICorrect) {
	sprite_index = spr_optBCorrect;
}