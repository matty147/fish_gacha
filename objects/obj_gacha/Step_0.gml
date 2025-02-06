function spawn_fish(your_fish, rarity)
{
		show_debug_message(your_fish);
		var fish_name = "spr_" + string(your_fish);
		var fish = instance_create_depth(room_width / 2, room_height / 2,0,obj_fish);
		fish.sprite_index = asset_get_index(fish_name);
		fish.image_xscale = 5;
		fish.image_yscale = 5;
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

if time % 10 == 0 && pulls > 0
{
	var rand = random_range(1,100);

	if rand <= 50
	{
		var your_fish = common_fish[random_range(0,array_length(common_fish))];
		show_debug_message("You got a fish!!!");
		spawn_fish(your_fish, "common");

	}else if rand <= 80
	{
	
		var your_fish = rare_fish[random_range(0,array_length(rare_fish))];
		show_debug_message("You got a fish!!!");	
		spawn_fish(your_fish,"rare");
	
	}else
	{
	
		var your_fish = legend_fish[random_range(0,array_length(legend_fish))];
		show_debug_message("You got a fish!!!");	
		spawn_fish(your_fish, "legend");
	}
	pulls--;
}

time++;