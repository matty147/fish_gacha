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
						var fish = instance_create_layer(500,500,"fish",obj_moving_fish);			
						fish.numb_in_fish_table = v;
						fish.fish_name = global.fish_cought[v][0];
						//fish.fish_size = _manager.fish_type_list[p][4]; // find this in the _manager.fish_type_list;
						//show_debug_message("this is the fucker your looking for!!!");
					}
				}
			}			
		}
		spawned_fish = true
	}
}