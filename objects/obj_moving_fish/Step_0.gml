if  next_move_time <= 0 || keyboard_check(ord("K"))
{
	stopped = false;	
	while true
	{
	
		_x = random_range(fish_tank.x,fish_tank.x + fish_tank.sprite_width);
		_y = random_range(fish_tank.y,fish_tank.y + fish_tank.sprite_height);
		move_time = random_range(0.1,5);
		
		if position_meeting(_x,_y,obj_fish_tank)
		{
			break;
		}
	}
	next_move_time = random_range(100,1000);
	move_direction = point_direction(x,y,_x,_y);
}next_move_time--;

//show_debug_message(point_distance(x,y,_x,_y));

if (point_distance(x, y, _x, _y) > 1) && !stopped
{
	//show_debug_message("b");
    x += lengthdir_x(1, move_direction);
    y += lengthdir_y(1, move_direction);
	
	little_x = x; 
	little_y = y;
}else
{
	//show_debug_message("a");
	stopped = true;
	
	//while (true)
	//{
		
		little_x += random_range(-0.5,0.5);
		little_y += random_range(-0.5,0.5);
		
		//show_debug_message(string(little_x) + " , " + string(little_y));
		
	//	if position_meeting(x + little_x,y + little_y,obj_fish_tank)
	//	{
	//		break;
	//	}
		
	//}
	
	if (point_distance(x, y, _x, _y) > 1)
	{
		x = lerp(x,little_x,0.1);
		y = lerp(y,little_y,0.1);
	}
}


//check if fish is outside of bounds
if !position_meeting(x,y,obj_fish_tank)
{
	stopped = true;
}

if global.time % 500 == 0
{

	global.money += money_for_fish;	
}

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id) && !_manager.grabbing_fish
{
	_manager.grabbing_fish = true;
	grabbing = true;
	last_valid_xpos = x;
	last_valid_ypos = y;
}

if mouse_check_button_released(mb_left) && grabbing
{
	_manager.grabbing_fish = false;
	grabbing = false;
	next_move_time = 0;
	
	if position_meeting(x,y,obj_fish_list)
	{
		global.fish_cought[numb_in_fish_table][2]--;

		for (var v = 0; v < array_length(global.fish_deployed);v++)
		{
			//show_debug_message(string(global.fish_cought[v][0]) + " vs " + string(global.fish_deployed[f][0]));
			if global.fish_deployed[v][0] == global.fish_cought[numb_in_fish_table][0]
			{
				//show_debug_message("fish deleted");
				//show_debug_message(global.fish_cought[numb_in_fish_table][0]);
				//show_debug_message(global.fish_deployed);
				//show_debug_message("v: " + string(v));
				show_debug_message("del fish: " + string(global.fish_deployed[v][0]));
				global.fish_deployed[v][1]--;
				break;
			}
		}

		instance_destroy();	
	}else if !position_meeting(x,y,obj_fish_tank)
	{
		x = last_valid_xpos;
		y = last_valid_ypos;	
	}
}

if grabbing
{
	depth = layer_get_depth("fish_list") - 100;
	x = mouse_x;	
	y = mouse_y;	
}else depth = layer_get_depth("fish");

