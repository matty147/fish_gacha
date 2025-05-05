enum rarity {
	NORMAL,
	COMMON, //?
	RARE,
	SUPER_RARE,
	SUPER_SUPER_RARE,
	ULTRA_RARE
}

normal_fish = [
"bass",
];

common_fish = [
"blob_fish"
];

rare_fish = [
"flat_fuck"];

super_rare_fish = [
"macrell"
];

super_super_rare_fish = [
"mini_fish"];

ultra_rare_fish = [
"smelly_can",
"kysela_rybicka"];

// roll chances

roll_chance = [ //values are in %
80, // normal
90, //common
95, // rare
97, // super rare 
98, // super super rare 
99.9 // ultra rare
];

chance_size = 1000;

first_upgrade_mult = 5;
second_upgrade_mult = 2;
third_upgrade_mult = 5;


current_fish_name = "spr_bass";
curent_fish_rarity = rarity.COMMON;

pulls = 0;
pulling = false;
pull_amount = 0;
pull_cost = 100;

pitty_counter = 0;  

time = 0;


