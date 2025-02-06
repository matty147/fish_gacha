if keyboard_check_pressed(vk_enter) || position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left)
{
	gacha.pulls += amount;
}