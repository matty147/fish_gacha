_delete = 100;

//rare = false;
//legend = false;

fish_rarity = rarity.COMMON;

gacha = instance_find(obj_gacha,0);

//shader
add = 0.2;
uni_add = shader_get_uniform(sha_legend, "add");
uni_time = shader_get_uniform(sha_legend, "time");