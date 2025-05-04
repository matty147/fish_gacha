if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id)
{
	show_debug_message("health: " + string(_health));
	_health--;
	
	for (var i = 0; i < 15;i++)
	{
		my_part = instance_create_layer(x,y,"mess",obj_particle);
		with (my_part)
		{
			sprite	= obj_mess.sprite_index;
			left = irandom_range(0,sprite_width / 2);
			top = irandom_range(0,sprite_height / 2);
			width = irandom_range(10,50);
			height = irandom_range(10,50);
			spd = irandom_range(1,10);
			dir = irandom_range(0,360);
			direction = dir;
			speed = spd;
		}
		my_part.image_index = image_index;
	}
}

if _health < 0
{
	array_delete(global.mess,0,1);
	instance_destroy();	
}