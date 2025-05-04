if global.time % 500 == 0
{
	
	show_debug_message("spawned");
	var position_x = random_range(bbox_left,bbox_right);
	var position_y = random_range(bbox_bottom,bbox_top);
	//var position_x = 500;
	//var position_y = 500;
	array_push(global.mess,[position_x,position_y]);
	instance_create_layer(position_x,position_y,"mess",obj_mess);
}