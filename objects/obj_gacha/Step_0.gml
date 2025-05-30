function spawn_fish(your_fish, rarity,position)
{
		show_debug_message(your_fish);
		show_debug_message(rarity);
		var fish_name = "spr_" + string(your_fish);
		var fish = instance_create_depth(position[0], position[1],0,obj_fish);
		fish.sprite_index = asset_get_index(fish_name);
		fish.image_xscale =0.25;
		fish.image_yscale = 0.25;
		fish.x -= image_xscale;
		fish.y -= image_yscale;
		current_fish_name = string(your_fish);
		switch (rarity)
		{
			case "normal":
			fish.fish_rarity = rarity.NORMAL;
				break;
			case "common":
			fish.fish_rarity = rarity.COMMON;
				break;
			case "rare":
			fish.fish_rarity = rarity.RARE;
				break;
			case "super_rare":
			fish.fish_rarity = rarity.SUPER_RARE;
				break;
			
			case "super_super_rare":
			fish.fish_rarity = rarity.SUPER_SUPER_RARE;
				break;
		
			case "ultra_rare":
			fish.fish_rarity = rarity.ULTRA_RARE;
				break
		}
		
		
		var found = false;
		
		for (var i = 0; i < array_length(global.fish_cought);i++)
		{
			if global.fish_cought[i][0] == your_fish
			{
				global.fish_cought[i][1]++;
				show_debug_message("already exists!!! {"+ string(your_fish) + "}");
				found = true;
			}
		}
		
		if !found
		{
			//name,count,in_fish_tank
			array_push(global.fish_cought,[your_fish,1,0]);
		}
		
}

randomize();

if pulls > 0 && !pulling
{
	if (pulls >= 10)
	{
		pulls -= 10;
		pull_amount = 10;
	}else
	{
		pulls--;
		pull_amount = 1;
	}
	
	if global.bait >= 1 * pull_amount
	{
		pulling = true;
		global.bait -= 1 * pull_amount;
		
		if pull_amount > 5 
		{
			var distance_x = room_width / 6;
		}else var distance_x = room_width / 2
	
		//show_debug_message(distance_x);
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
		
			//show_debug_message(x_numb)
		
			var _y = 1;//round(pull_amount / 5);

	
			//show_debug_message(y_numb + _y);
		
			_y = room_height / (_y + y_numb + 1);
			x_numb++;
	
			//show_debug_message("x: " + string(_x) + " y: " + string(_y));
	
			var position = [_x,_y]; // x,y
	
			var rand = random_range(1 + (global.upgrade_status[2] * first_upgrade_mult * chance_size),(75 + global.upgrade_status[2] * first_upgrade_mult)* chance_size); // change chances based on strenght

			pitty_counter += 0.01;
			
			var mult = global.upgrade_status[0]  * second_upgrade_mult + global.upgrade_status[1] * third_upgrade_mult;
			
			show_debug_message(chance_size * (roll_chance[0] - mult));
			if rand <= chance_size * (roll_chance[0] - mult) // normal
			{
				var your_fish = normal_fish[random_range(0,array_length(normal_fish))];
				//show_debug_message("You got a fish!!!");
				spawn_fish(your_fish, "normal",position);

			}else if rand <= chance_size * (roll_chance[1] - mult) // common
			{
				var your_fish = rare_fish[random_range(0,array_length(rare_fish))];
				//show_debug_message("You got a fish!!!");	
				spawn_fish(your_fish,"common",position);
			}else if rand <= chance_size * (roll_chance[2] - mult) // rare
			{
				var your_fish = rare_fish[random_range(0,array_length(rare_fish))];
				//show_debug_message("You got a fish!!!");	
				spawn_fish(your_fish,"rare",position);
			
			}else if rand <= chance_size * (roll_chance[3] - mult) // super rare
			{
				var your_fish = super_rare_fish[random_range(0,array_length(super_rare_fish))];
				//show_debug_message("You got a fish!!!");	
				spawn_fish(your_fish,"super_rare",position);
			
			}else if rand <= chance_size * (roll_chance[4] - mult) // super super rare
			{
				pitty_counter = 0;
				var your_fish = super_super_rare_fish[random_range(0,array_length(super_super_rare_fish))];
				//show_debug_message("You got a fish!!!");	
				spawn_fish(your_fish,"super_super_rare",position);
			
			}else if rand >= chance_size * (roll_chance[5] - pitty_counter - mult) // ultra rare
			{
				pitty_counter = 0;
				var your_fish = ultra_rare_fish[random_range(0,array_length(ultra_rare_fish))];
				//show_debug_message("You got a fish!!!");	
				spawn_fish(your_fish, "ultra_rare",position);
			}else show_debug_message("no_fish " + string(rand) + "\n");
		}
	}
}

time++;