draw_sprite_general(sprite,0,left,top,width,height,x,y,1,1,dir,c_white,c_white,c_white,c_white,1);
speed -= 0.1;
if speed < 0
{
	speed = 0;	
}

y += fall_speed;
fall_speed += 0.5;

if (x>room_width) || (x < 0) || (y > room_height)
{
	instance_destroy();
}