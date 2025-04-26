randomize();

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
fish_tank = instance_find(obj_fish_tank,0);


_x = random_range(fish_tank.x,fish_tank.x + fish_tank.sprite_width);
_y = random_range(fish_tank.y,fish_tank.y + fish_tank.sprite_height);
move_time = 0.1; // make min and max
next_move_time = random_range(0,500);
move_direction = random_range(0,360);

little_x = 0;
little_y = 0;

stopped = false;

money_for_fish = 2.5;

parrents_name = "carp";

numb_in_fish_table = 0;

grabbing = false;
