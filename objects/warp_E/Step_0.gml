targetRoom = coltest;
targetX = obj_char.x;

if( place_meeting(x, y, obj_char)) {
	room_goto(targetRoom);
	obj_char.x = 94;
}