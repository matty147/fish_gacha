switch (fish_rarity)
{
    case rarity.COMMON:
        
		//shader_set(sha_gloss);

		//shader_set_uniform_f(uni_add,add);
		//shader_set_uniform_f(uni_time,current_time / 2000);
			break;
    case rarity.ULTRA_RARE:
        shader_set(sha_legend);

		shader_set_uniform_f(uni_add,add);
		shader_set_uniform_f(uni_time,current_time / 2000);
			break;
}

draw_self();

shader_reset();

switch (fish_rarity)
{
	
	case rarity.NORMAL:
		draw_sprite(spr_n, 0, x + sprite_width / 1/3,y);
			break;
			
	case rarity.COMMON:
		draw_sprite(spr_c, 0, x + sprite_width / 1/3,y);
			break;
			
	case rarity.RARE:
		draw_sprite(spr_r, 0, x + sprite_width / 1/3,y);
			break;
			
	case rarity.SUPER_RARE:
		draw_sprite(spr_sr, 0, x + sprite_width / 1/3,y);
			break;
	
	case rarity.SUPER_SUPER_RARE:
		draw_sprite(spr_ssr, 0, x + sprite_width / 1/3,y);
			break;
	
	case rarity.ULTRA_RARE:
		draw_sprite(spr_ur, 0, x + sprite_width / 1/3,y);
			break;
	
}