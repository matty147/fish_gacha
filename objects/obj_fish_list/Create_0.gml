start_position_x = x;
start_position_y = y;
hidden = false;

fish = instance_create_layer(x + sprite_width / 2,y + 120,"fish_list",obj_fish_list_fish)
fish.display_fish = "carp";
fish.image_xscale = 4;
fish.image_yscale = 3.5;
fish.fish_list = id;
fish.depth = depth - 1;