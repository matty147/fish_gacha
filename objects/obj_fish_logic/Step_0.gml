if room == rm_fishtank
{
	if !spawned_fish
	{
		for (var f = 0; f < array_length(global.fish_cought);f++)
		{
			var fish = instance_create_layer(500,500,"fish",obj_moving_fish);
		}
		spawned_fish = true
	}
}