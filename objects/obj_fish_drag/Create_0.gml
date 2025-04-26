_manager = instance_find(manager,0);

image_speed = 0;
grabbing = false;

offset = 16;

x = x - offset;
def_pos_x = x;
def_pos_y = y;

fish_name = "cod"

//object_number is defined in the bg object


sprite_name = "spr_" + fish_name;
	
sprite_index = asset_get_index(sprite_name);
display_sprite_size = 1;
numb_in_fish_table = 1;
image_xscale = display_sprite_size;
image_yscale = display_sprite_size;