if !position_meeting(x,y,obj_ground)
{
	y++;	
}

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id)
{
	show_debug_message("health: " + string(_health));
	_health--;
	
	for (var i = 0; i < 15;i++)
	{
		my_part = instance_create_layer(x,y,"Fish",obj_particle);
		with (my_part)
		{
			
			left = irandom_range(0,sprite_width / 2);
			top = irandom_range(0,sprite_height / 2);
			width = irandom_range(10,50);
			height = irandom_range(10,50);
			spd = irandom_range(1,10);
			dir = irandom_range(0,360);
			direction = dir;
			speed = spd;
		}
		my_part.sprite = sprite_index;
		my_part.image_index = image_index;
	}
	
}

if _health < 0
{
	instance_destroy();	
}