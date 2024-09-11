targetRoom = quizRoomTest;
targetX = obj_char.x;
targetY = obj_char.y;

if( place_meeting(x, y, obj_char)) {
	room_goto(targetRoom);
	obj_char.x = 686;
	obj_char.y = 641;
}