randomize();

image_blend = make_color_rgb(irandom(255),irandom(255),irandom(255));

//move_area = 10;
//move_angle = 60; 
//_x = 0;
//_y = 0;

//moving = false;
//move_direction = 0;
//idle = 0;
//idle_x = x;
//idle_y = y;
//image_xscale *= irandom_range(0,1);

//if image_xscale == 0 {image_xscale = -1;}
//if image_xscale == -1 {move_direction = -180;}

//_x = random_range(fish_tank.x,fish_tank.x + fish_tank.sprite_width);
//_y = random_range(fish_tank.y,fish_tank.y + fish_tank.sprite_height);
//move_time = 0.1; // make min and max
//next_move_time = random_range(0,500);
//move_direction = random_range(0,360);

//little_x = 0;
//little_y = 0;

//stopped = false;



fish_tank = instance_find(obj_fish_tank,0);
_manager = instance_find(manager,0);

desired_x = random_range(bbox_left,bbox_right);
desired_y = random_range(bbox_top,bbox_bottom);

_speed = 1;
pause = 0;

money_for_fish = 2.5;

fish_name = "carp";

weight = 1;

numb_in_fish_table = 0;

fish_health = 10;

grabbing = false;

last_valid_xpos = x;
last_valid_ypos = y;

limit_crowd = false;
crowded_limit = 5;

is_racist = false;

racist_fish_object = NaN;

being_attacked = false;
being_attacked_by = "";
killed_by_fish = false;

attack = false;
attack_at_fish = "cod";

scared = false;
scared_type = "arowana"

attack_size = true;
fish_size = 5;

too_crowded_warning = false;
racist_warning = false;
dead_warning = false;
messy_warning = false;