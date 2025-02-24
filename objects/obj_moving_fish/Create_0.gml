randomize();

fish_tank = instance_find(obj__fish_tank,0);


_x = random_range(fish_tank.x,fish_tank.x + fish_tank.sprite_width);
_y = random_range(fish_tank.y,fish_tank.y + fish_tank.sprite_height);
move_time = 0.1; // make min and max
next_move_time = random_range(0,500);
move_direction = random_range(0,360);

little_x = 0;
little_y = 0;

stopped = false;

money_for_fish = 2.5;

