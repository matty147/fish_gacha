if _delete < 0
{
	instance_destroy();
	_delete = 100
}_delete--;

add = mouse_x / room_width;