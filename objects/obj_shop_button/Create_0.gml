manage = instance_find(manager,0);
gacha = instance_find(obj_gacha,0);

show_upgrades = false;
numb_of_upgrades = 5;


icons = [
spr_bait,
spr_fishing_rod,
spr_strength
]

if !variable_global_exists("upgrade_status")
{
	global.upgrade_status = [
	0,
	0,
	0
	];
}

description = [
"Bigger chance to catch better fish",
"Rod won't break so easily",
"Catch bigger fish"
]

upgrade_price = [10,100,150,200];

upgrade_bars = [];

my_price = upgrade_price[upgrade_type];

background = instance_create_layer(x - 20,y,"shop",obj_shop_bg);
background.depth = depth + 1;
background.image_xscale = 10;
background.image_yscale = 2;

cost_background = instance_create_layer(x + background.sprite_width + 10,y,"shop",obj_shop_bg);
cost_background.image_xscale = 2;
cost_background.image_yscale = 2;

if button_type == 1
{	
	show_upgrades = true;
	show_debug_message(upgrade_type);
	
	for (var u = 0; u < numb_of_upgrades;u++)
	{
		
		var instance = instance_create_layer(x + sprite_width + 15,y - sprite_height / 2 + 48,"shop",obj_upgrade_bar)
	
			instance.x += (instance.sprite_width + 25) * u;
			if u < global.upgrade_status[upgrade_type]
			{
				instance.upgraded = true;
			}else instance.upgraded = false;
		
		array_push(upgrade_bars,instance);
		
	}
	
	
	
}