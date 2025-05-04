//too_crowded
//racist
//attack_fish
//atack_fish_victim
//attack_smaller_fish

/// @function             too_crowded
/// @param {int}  amount  max amount of fish in the tank
/// @description          checks if the fishtank has to many fishs

function too_crowded(amount,object)
{

	var count = instance_number(object);

	return (amount < count);
}


/// @function                racist
/// @param {int}  fish_type  max the type of the fish checking
/// @description             checks if there are any other fish types in the tank.


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


/// @function				   atack_fish
/// @param {string}  victim_name  id of the fish that we are checking for to attack
/// @description               checks if there is a attackable fish, specify which one

function attack_fish(victim_name)
{
		var count = instance_number(obj_moving_fish);

		for (var i = 0; i < count; i++)
		{
			var instance = instance_find(obj_moving_fish, i);
			if instance.fish_name == victim_name // check if it is the type it should attack
			{
				return true;	
			}
		}
		return false;
}

/// @function				   atack_fish_victim
/// @param {string}  attacker_name  id of the fish that we are checking for to fear
/// @description               checks if there is a fish it should fear

function atack_fish_victim(attacker_name)
{
		var count = instance_number(obj_moving_fish);

		for (var i = 0; i < count; i++)
		{
			var instance = instance_find(obj_moving_fish, i);
			if instance.fish_name == attacker_name // check if it is the type it should be scared about
			{
				return true;
			}
		}
		return false;
}

/// @function				   attack_smaller_fish
/// @param {string}  victim_name  size of wich if the fish is smaller we attack it
/// @description               checks if there is a small fish

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