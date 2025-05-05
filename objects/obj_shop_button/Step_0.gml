switch button_type
{
	case 0:
		if position_meeting(mouse_x,mouse_y,id) || position_meeting(mouse_x,mouse_y,background)  || position_meeting(mouse_x,mouse_y,cost_background)
		{
			if  mouse_check_button_pressed(mb_left)
			{
				
				if global.money >= gacha.pull_cost
				{
					audio_play_sound(snd_buy,0,false);
					global.bait++;
					global.money -= gacha.pull_cost
				}
			}
		}
			break;
	case 1:
		
		my_price = power(upgrade_price[upgrade_type],(global.upgrade_status[upgrade_type] + 1) * 0.75);
		my_price = floor(my_price);
		
		
		if position_meeting(mouse_x,mouse_y,id) || position_meeting(mouse_x,mouse_y,background)  || position_meeting(mouse_x,mouse_y,cost_background)
		{
			if  mouse_check_button_pressed(mb_left)
			{
				
				if global.upgrade_status[upgrade_type] < numb_of_upgrades && global.money >= my_price
				{
					audio_play_sound(snd_buy,0,false);
					global.upgrade_status[upgrade_type]++;
				
					global.money -= my_price;
				
					upgrade_bars[global.upgrade_status[upgrade_type] - 1].upgraded = true;
				}
			}
		}
		
		
	
		break;
	
}