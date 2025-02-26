switch button_type
{
	case 0:
		if keyboard_check_pressed(vk_enter) || position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left)
		{
			if global.money >= gacha.pull_cost
			{
				global.bait++;
				global.money -= gacha.pull_cost
			}
		}
			break;
	case 1:
		if keyboard_check(vk_enter) || position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left)
		{
			if global.money >= 0
			{
				global.money++;
			}
		}
	
	
		break;
	
}