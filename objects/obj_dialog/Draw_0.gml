draw_set_font(fnt_dialog);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

var _len = string_length(text[text_current]);
if (char_current <= _len)
{
	if string_copy(text[text_current], char_current, 1) != " " { audio_play_sound(dialogue,10,0); }
    char_current += char_speed;	
}

var _str = string_copy(text[text_current], 1, char_current);

draw_text(text_x, text_y,  _str);