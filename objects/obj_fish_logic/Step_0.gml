if room == rm_fishtank
{
	if !spawned_fish
	{
		show_debug_message(global.fish_deployed);
		for (var f = 0; f < array_length(global.fish_deployed);f++)
		{
			
			for (var v = 0; v < array_length(global.fish_cought);v++)
			{
				//show_debug_message(string(global.fish_cought[v][0]) + " vs " + string(global.fish_deployed[f][0]));
				if global.fish_cought[v][0] == global.fish_deployed[f][0]
				{
					for (var i = 0; global.fish_deployed[f][1] > i;i++)
					{
						var fish = instance_create_layer(room_width / 2,room_height / 2,"fish",obj_moving_fish);			
						fish.numb_in_fish_table = v;
						fish.fish_name = global.fish_cought[v][0];
						
						
						//--------------------------------------------- behaviour data 7
						//turn on/off viz scripts -> fish conditions
						//too_crowded
						//racist
						//attack_fish
						//atack_fish_victim
						//attack_smaller_fish

						//--------------------------------------------- setting variables
						//crowded_limit = 5;
						//attack_at_fish = "cod";
						//fish_size = 5;

						
						//fish.fish_size = _manager.fish_type_list[p][4]; // find this in the _manager.fish_type_list;
						
						var fish_type_list_id = 0 // find fish in table
						
						for (var k = 0; k < array_length(_manager.fish_type_list);k++)
						{
							if global.fish_cought[v][0] == _manager.fish_type_list[k][1]
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
						
						fish.limit_crowd = output[0];
						fish.is_racist = output[1];
						fish.attack = output[2];
						fish.scared = output[3];
						fish.attack_size = output[4];
						fish.weight = _manager.fish_type_list[fish_type_list_id][4];
					}
				}
			}			
		}
		spawned_fish = true
	}
}