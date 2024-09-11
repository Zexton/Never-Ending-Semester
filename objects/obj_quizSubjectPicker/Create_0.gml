obj_desktop.sprite_index = spr_quizApp;
draw_set_font(fnt_quiz);
instance_create_layer(obj_desktop.x/2, obj_desktop.y, "Instances_pauseButtons", obj_mathaddButton);
instance_create_layer(obj_desktop.x/2 + 150, obj_desktop.y, "Instances_pauseButtons", obj_mathsubButton);