function spawn_fish(your_fish, rarity,position)
{
		show_debug_message(your_fish);
		var fish_name = "spr_" + string(your_fish);
		var fish = instance_create_depth(position[0], position[1],0,obj_fish);
		fish.sprite_index = asset_get_index(fish_name);
		fish.image_xscale = 3;
		fish.image_yscale = 3;
		fish.x -= image_xscale;
		fish.y -= image_yscale;
		current_fish_name = string(your_fish);
		curent_fish_rarity = rarity;
		switch (rarity)
		{
			case "common":
				break;
			
			case "rare":
			fish.rare = true;
				break;
		
			case "legend":
			fish.legend = true;
				break;
			
		}
}

randomize();

if pulls > 0 && !pulling
{
	pulling = true;
	if (pulls >= 10)
	{
		pulls -= 10;
		pull_amount = 10;
	}else
	{
		pulls--;
		pull_amount = 1;
	}
	
	if pull_amount > 5 
	{
		var distance_x = room_width / 6;
	}else var distance_x = room_width / 2
	
	show_debug_message(distance_x);
	var x_numb = 1;
	var y_numb = 0;
	
	
	for (var i = 1; i < pull_amount + 1; ++i)
	{
			
		if (i % 6 == 0)
		{
			y_numb++;
			x_numb = 1;
		}
	
		var _x = distance_x * x_numb;
		
		show_debug_message(x_numb)
		
		var _y = 1;//round(pull_amount / 5);

	
		show_debug_message(y_numb + _y);
		
		_y = room_height / (_y + y_numb + 1);
		x_numb++;
	
		show_debug_message("x: " + string(_x) + " y: " + string(_y));
	
		var position = [_x,_y]; // x,y
	
		var rand = random_range(1,1000);

		if rand <= 750
		{
			pitty_counter += 0.125;
			var your_fish = common_fish[random_range(0,array_length(common_fish))];
			show_debug_message("You got a fish!!!");
			spawn_fish(your_fish, "common",position);

		}else if rand <= 990 - pitty_counter
		{
			pitty_counter += 0.25;
			var your_fish = rare_fish[random_range(0,array_length(rare_fish))];
			show_debug_message("You got a fish!!!");	
			spawn_fish(your_fish,"rare",position);
	
		}else
		{
			pitty_counter = 0;
			var your_fish = legend_fish[random_range(0,array_length(legend_fish))];
			show_debug_message("You got a fish!!!");	
			spawn_fish(your_fish, "legend",position);
		}
	}
}

time++;