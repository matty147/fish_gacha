manage = instance_find(manager,0);
gacha = instance_find(obj_gacha,0);

show_upgrades = false;
numb_of_upgrades = 5;

upgrade_cost =[0,
0
];

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

upgrade_bars = [];



if button_type == 1
{	
	show_upgrades = true;
	show_debug_message(upgrade_type);
	
	for (var u = 0; u < numb_of_upgrades;u++)
	{
		
		var instance = instance_create_layer(x + sprite_width + 25,y,"shop",obj_upgrade_bar)
	
			instance.x += (instance.sprite_width + 25) * u;
			if u < global.upgrade_status[upgrade_type]
			{
				instance.upgraded = true;
			}else instance.upgraded = false;
		
		array_push(upgrade_bars,instance);
		
	}
	
	
	
}