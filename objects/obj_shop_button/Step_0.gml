switch button_type
{
	case 0:
		if position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left) //keyboard_check_pressed(vk_enter) ||
		{
			if global.money >= gacha.pull_cost
			{
				global.bait++;
				global.money -= gacha.pull_cost
			}
		}
			break;
	case 1:
		
		if position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left) //keyboard_check(vk_enter) || 
		{
			
			if global.upgrade_status[upgrade_type] < numb_of_upgrades
			{
				global.upgrade_status[upgrade_type]++;
				
				upgrade_bars[global.upgrade_status[upgrade_type] - 1].upgraded = true;
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		}
	
	
		break;
	
}