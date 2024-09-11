text[0] = "";

text_current = 0;
text_last = 1;
text_width = 0;
text_x = 32;
text_y = 32;

char_current = 1;
char_speed = 0.5;

text[text_current] = string_wrap(text[text_current], text_width /2);
