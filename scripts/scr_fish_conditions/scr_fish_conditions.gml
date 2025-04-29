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
			if instance.numb_in_fish_table != fish_type // check if it is the same type
			{
				return true;	
			}
		}
		return false;
}

function atack_fish(victim_name)
{
		var count = instance_number(obj_moving_fish);

		for (var i = 0; i < count; i++)
		{
			var instance = instance_find(obj_moving_fish, i);
			if instance.fish_name == victim_name // check if it is the same type
			{
				return true;	
			}
		}
		return false;
}

function attack_smaller_fish(size)
{
		var count = instance_number(obj_moving_fish);

		for (var i = 0; i < count; i++)
		{
			var instance = instance_find(obj_moving_fish, i);
			if instance.fish_size < size// check if it is the same type
			{
				return true;	
			}
		}
		return false;
}