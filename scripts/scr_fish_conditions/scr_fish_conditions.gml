function too_crowded(amount){

	var count = instance_number(obj_moving_fish);

	return (amount < count);
}

function racist(fish_type)
{
		var count = instance_number(obj_moving_fish);

		for (var i = 0; i < count; i++)
		{
			var instance = instance_find(obj_moving_fish, i);
			//if instance.numb_in_fish_table // check if it is the same type
			show_debug_message("found one");
		}
}