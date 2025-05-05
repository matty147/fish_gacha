if keyboard_check_pressed(vk_enter) || position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left)
{
	if !gacha.pulling
	{
		audio_play_sound(snd_slot,0,false);
		gacha.pulls += amount;
	}
}