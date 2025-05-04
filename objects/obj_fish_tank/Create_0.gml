randomize();

_manager = instance_find(manager,0);


for (var i = 0;i < array_length(global.mess);i++)
{
	show_debug_message("spawned");
	instance_create_layer(global.mess[i][0],global.mess[i][1],"mess",obj_mess);
	
}
