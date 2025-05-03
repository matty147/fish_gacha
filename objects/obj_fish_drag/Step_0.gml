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
			if global.fish_cought[numb_in_fish_table][1] > global.fish_cought[numb_in_fish_table][2]
			{
				show_debug_message("fish_name: " + string(global.fish_cought[numb_in_fish_table][0]));
				show_debug_message("amount - used: " + string(global.fish_cought[numb_in_fish_table][1] - global.fish_cought[numb_in_fish_table][2]));
				global.fish_cought[numb_in_fish_table][2]++;
				
				instance.numb_in_fish_table = numb_in_fish_table;
				instance.fish_name = global.fish_cought[numb_in_fish_table][0];
				var already_exists = false;
				var fish_id = 0;
				
				for (var f = 0; f < array_length(global.fish_deployed);f++)
				{
					show_debug_message("fishesifuhsd " + global.fish_deployed[f][0]);
					show_debug_message("fishesifuhsd " + global.fish_cought[numb_in_fish_table][0]);
					
					if  global.fish_deployed[f][0] == global.fish_cought[numb_in_fish_table][0]
					{
						show_debug_message("i exist");
						already_exists = true;
						fish_id = f;
						
						show_debug_message("f: " + string(f));
						break;
					}
				}
				
				if !already_exists
				{
					array_push(global.fish_deployed,[global.fish_cought[numb_in_fish_table][0],1]);	
					
				}else global.fish_deployed[fish_id][1]++;
				
				var fish_type_list_id = 0 // find fish in table
						
				for (var k = 0; k < array_length(_manager.fish_type_list);k++)
				{
					if global.fish_cought[numb_in_fish_table][0] == _manager.fish_type_list[k][1]
					{
						fish_type_list_id = k;
						break;
					}
				}
						
				var input = string(_manager.fish_type_list[fish_type_list_id][7]);
				var output = [];
						
				for (var l = 1; l <= string_length(input); l++) { // split input into chars
					array_push(output, real(string_char_at(input, l)));
				}
						
				show_debug_message("input: " + string(input));
				show_debug_message("output: " + string(output));
						
				instance.limit_crowd = output[0];
				instance.is_racist = output[1];
				instance.attack = output[2];
				instance.scared = output[3];
				instance.attack_size = output[4];
				
			}else instance_destroy(instance);
		}else instance_destroy(instance);
	} 

}

//show_debug_message("x: " + string(x));
//show_debug_message("y: " + string(y));
