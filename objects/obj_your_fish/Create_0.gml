fish_list = id;
starting_y = y;

_manager = instance_find(manager,0);

display_text = false;

text_size = 1;

display_fish = "Carp";
fish_name = "carp";
amount = 5;

grab_fish = instance_create_layer(x + sprite_width / 2,y + sprite_height / 2,"fish_list",obj_fish_drag);
grab_fish.fish_name = "carp";
grab_fish.image_xscale = 2;
grab_fish.image_yscale = 2;


