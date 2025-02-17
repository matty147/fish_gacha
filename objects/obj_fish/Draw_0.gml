if rare{
	//shader_set(sha_gloss);

	//shader_set_uniform_f(uni_add,add);
	//shader_set_uniform_f(uni_time,current_time / 2000);
}

if legend{
	shader_set(sha_legend);

	shader_set_uniform_f(uni_add,add);
	shader_set_uniform_f(uni_time,current_time / 2000);
}

draw_self();

shader_reset();

if rare == true
{
	draw_sprite(spr_sr, 0, x + sprite_width / 1/3,y);
}else if legend == true
{
		draw_sprite(spr_ur, 0, x + sprite_width / 1/3,y);
}else
{
		draw_sprite(spr_n, 0, x + sprite_width / 1/3,y);
}