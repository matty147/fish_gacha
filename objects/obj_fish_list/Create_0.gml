start_position_x = x;
start_position_y = y;

move_x = room_width - sprite_width;
move_y = y;

hidden = true;

show_debug_message(array_length(global.fish_cought));

max_scroll_height = 0;

_manager = instance_find(manager,0);

curent_scroll_height = 0;

if list_type == 0
{
	for (var i = 0;i < array_length(global.fish_cought);i++)
	{
		var fish_id = 0;
	
		for (var j = 0; j < array_length(_manager.fish_type_list);j++)
		{
			//show_debug_message("fish: " + string(global.fish_cought[i][0]) + " vs " +  string(_manager.fish_type_list[j][1]));
			if string(global.fish_cought[i][0]) == string(_manager.fish_type_list[j][1])
			{
				//show_debug_message("found fish: " + string(global.fish_cought[i]));
				fish_id = j;
				break;
			}
			fish_id = -1;
		}
	  
		//  [
	    //    "Bass",
	    //    "bass",
	    //    ["banana", "tropical"],
	    //    ["other fish"],
	    //    120,
	    //    "4x2",
	    //    "c"
	    //],
	
	
		if fish_id != -1
		{
			fish = instance_create_layer(x + sprite_width / 2,15,"fish_list",obj_fish_list_fish);
			fish.display_fish = _manager.fish_type_list[fish_id][1];
			fish.like = _manager.fish_type_list[fish_id][2];
			fish.no_like = _manager.fish_type_list[fish_id][3];
			fish.weight = _manager.fish_type_list[fish_id][4];
			show_debug_message("a: " + string(fish_id) + " d: " + string(_manager.fish_type_list[fish_id][5]));
			fish.grid_size = _manager.fish_type_list[fish_id][5];
			fish._rarity = _manager.fish_type_list[fish_id][6];
			fish.image_xscale = 4;
			fish.image_yscale = 3.5;
			fish.y += (fish.sprite_height + 30) * i;
			fish.starting_y = fish.y;
			fish.fish_list = id;
			fish.depth = depth - 1;
			max_scroll_height = (fish.sprite_height + 30) * (i - 2);
		}
	}

	if max_scroll_height < 0
	{
		max_scroll_height = 0;	
	}

	//show_debug_message(max_scroll_height);
}else if list_type == 1
{
	
	
}else if list_type == 2
{
	
	
}
