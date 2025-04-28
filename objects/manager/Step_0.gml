if keyboard_check(vk_control) && keyboard_check_pressed(vk_tab)
{
	debug_log = !debug_log;
}

if keyboard_check_pressed(ord("R"))
{
	game_restart();
}

if keyboard_check_pressed(ord("L"))
{
	show_debug_message(global.fish_cought);
}

show_debug_log(debug_log);



if keyboard_check_pressed(vk_left)
{
	global.curent_scene--;	
}else if keyboard_check_pressed(vk_right)
{
	global.curent_scene++;
}

if global.curent_scene > numb_of_scenes
{
	global.curent_scene = numb_of_scenes;	
}else if global.curent_scene < 0
{
	global.curent_scene = 0;
}

//if global.time % 10 == 0
//{
	
//	show_debug_message(global.curent_scene);
//	show_debug_message(room);
//}



switch (global.curent_scene)
{
	case 0:
		if rm_fishtank != room
		{
			show_debug_message("went to fishtank");
			room_goto(rm_fishtank);
		}
			break;
			
	case 1:
		if rm_gacha != room
		{
			show_debug_message("went to gacha");
			room_goto(rm_gacha);
		}
		break;
		
	case 2:
		if rm_shop != room
		{
			show_debug_message("went to shop");
			room_goto(rm_shop);
		}
		break;
	
}

global.time++;

if keyboard_check_pressed(ord("G"))
{
	show_debug_message(global.fish_cought);
}
if keyboard_check_pressed(ord("F"))
{
	show_debug_message(global.fish_deployed);
}
