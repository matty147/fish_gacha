if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id)
{
    
	grabbing = true;
	
}else{
	x = def_pos_x;
	y = def_pos_y;
}

if grabbing{
	x = mouse_x - offset;
	y = mouse_y;


	if mouse_check_button_released(mb_left) && grabbing
	{
		grabbing = false;

		var instance = instance_create_layer(x,y,"fish", obj_moving_fish);
	
		if position_meeting(instance.x,instance.y,obj_fish_tank)
		{
			
		}else instance_destroy(instance);
	} 

}

show_debug_message("x: " + string(x));
show_debug_message("y: " + string(y));
