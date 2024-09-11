E = keyboard_check_pressed(ord("E"));
if (E) {

	if(obj_Lamp.sprite_index == spr_Lamp)
	{
		obj_Lamp.sprite_index = spr_LampOff;

	}
	else
	{
		obj_Lamp.sprite_index = spr_Lamp;
	}
	
}