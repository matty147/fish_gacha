if pause < 0
{

	if distance_to_point(desired_x,desired_y) < 10
	{
		randomize();
		var rand = irandom_range(0,5);
		//show_debug_message("rand: " + string(rand));
	
		if rand  < 3 //find new location
		{
			//show_debug_message("move activated");
			_speed = random_range(0.1,2);
			desired_x = random_range(fish_tank.bbox_left,fish_tank.bbox_right);
			desired_y = random_range(fish_tank.bbox_top,fish_tank.bbox_bottom);
			//show_debug_message("new x: " + string(desired_x) + " new y: " + string(desired_y));
			//show_debug_message("x: " + string(x) + " y: " + string(y));
		}
		
		if rand > 3 && rand < 5 //take a break
		{
			pause = random_range(1 * fps,3 *  fps);
			_speed = 0;
			desired_x = x;
			desired_y = y;
			move_towards_point(desired_x,desired_y,_speed); // have to reset the movement or else it will remain in the moving state
			//show_debug_message("pause activated");
		}
		
	}else
	{
		move_towards_point(desired_x,desired_y,_speed);	
	}
	
	if sign(desired_x - x)
	{
		image_xscale = 1;
		//show_debug_message("going right");
	}else image_xscale = -1;
	
}else
{
	pause--;
	//show_debug_message("pause: " + string(pause));
}

	//randomise a movement a bit
	x = lerp(x, x + irandom_range(-1,1),0.1);
	y = lerp(y, y + irandom_range(-1,1),0.1);

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
	desired_x = x;
	desired_y = y;
}

if mouse_check_button_released(mb_left) && grabbing
{
	_manager.grabbing_fish = false;
	grabbing = false;
	
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

if limit_crowd && too_crowded(crowded_limit)
{
	//show_debug_message("crowded");
	if global.time % 100
	{
		var mult = instance_number(obj_moving_fish) - crowded_limit; //make fish die faster if there are more then the alowed limit
		//show_debug_message(mult);
		fish_health -= random_range(0,0.01 * mult);
		//show_debug_message("health: " + string(fish_health));
	}
}

if is_racist && racist(numb_in_fish_table)
{
//	if is_nan(racist_fish_object)
//	{
		var count = instance_number(obj_moving_fish);

		for (var i = 0; i < count; i++)
		{
			var instance = instance_find(obj_moving_fish, i);
			if instance.numb_in_fish_table != numb_in_fish_table // check if it is the same type
			{
				racist_fish_object = instance;
				pause = 2;
			}
		}
		
//	}else if (point_distance(x, y, racist_fish_object.x, racist_fish_object.y) > 50)
//	{
//		x = lerp(x,racist_fish_object.x,0.5);	
//		y = lerp(y,racist_fish_object.y,0.5);	
//	}else stopped = false;

	//show_debug_message(racist_fish_object.fish_health);
	if point_distance(x, y, racist_fish_object.x, racist_fish_object.y) < 50
	{
		//show_debug_message("attacking");
		racist_fish_object.fish_health -= random_range(0.01,0.05);
		//show_debug_message("health: " + string(racist_fish_object.fish_health));
		
		if racist_fish_object.fish_health < 0
		{
			racist_fish_object.killed_by_fish = true;
			racist_fish_object = NaN;
		}
	}else
	{
		desired_x = racist_fish_object.x;
		desired_y = racist_fish_object.y;
		racist_fish_object.being_attacked = true;
		racist_fish_object.being_attacked_by = id;
		pause = -1; //always be active
		_speed = 5;
		
		
			//ez fix but looks bad?
		//if racist_fish_object.grabbing // make it not move when the fish is grabbed
		//{
		//	move_towards_point(x,y,0);	
		//}
		
			//would need some more work
		if racist_fish_object.grabbing && !position_meeting(desired_x,desired_y,obj_fish_tank) // check if the fish is out of bounds if yes get the last valid point
		{
			var points = get_in_bounds_point(x,y,desired_x,desired_y,_speed,fish_tank.bbox_left,fish_tank.bbox_top,fish_tank.bbox_right,fish_tank.bbox_bottom,32);
			desired_x = points[0];
			desired_y = points[1];
			
			if sign(racist_fish_object.x - x)
			{
				image_xscale = 1;
				//show_debug_message("going right");
			}else image_xscale = -1;
		}
		
	}
}

//if being_attacked && instance_exists(being_attacked_by) && !position_meeting(desired_x,desired_y,obj_fish_tank) //later?
//{
//	var _direction = point_direction(x,y,being_attacked_by.x,being_attacked_by.y) * -1;
//	show_debug_message("init: " + string(_direction));
//	desired_x += lengthdir_x(10,_direction);
//	desired_y += lengthdir_y(10,_direction);
//	var points = get_in_bounds_point(x,y,desired_x,desired_y,_speed,fish_tank.bbox_left,fish_tank.bbox_top,fish_tank.bbox_right,fish_tank.bbox_bottom,32);
//	desired_x = points[0];
//	desired_y = points[1];
//}

if attack && attack_fish(attack_at_fish) && fish_name != attack_at_fish
{
	//show_debug_message("attacking");
}

if scared && atack_fish_victim(scared_type) && fish_name != attack_at_fish
{
	//show_debug_message("attacking"); 
}

if attack_size && attack_smaller_fish(fish_size)
{
	
	//show_debug_message("smaller");
	
}

if fish_health < 0
{
	if !killed_by_fish
	{	
		global.fish_cought[numb_in_fish_table][2]--;
	}

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
	var dead_fish = instance_create_layer(x,y,"Fish",obj_dead_fish);
	dead_fish.image_index = image_index;
	dead_fish._health = weight / 5;
	instance_destroy();
}

if grabbing
{
	depth = layer_get_depth("fish_list") - 100;
	x = mouse_x;	
	y = mouse_y;	
}else depth = layer_get_depth("fish");