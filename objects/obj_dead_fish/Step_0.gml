if !position_meeting(x,y,obj_ground)
{
	y++;	
}

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id)
{
	show_debug_message("health: " + string(_health));
	_health--;
}

if _health < 0
{
	instance_destroy();	
}