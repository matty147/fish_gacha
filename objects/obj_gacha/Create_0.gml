enum rarity {
	NORMAL,
	COMMON, //?
	RARE,
	SUPER_RARE,
	SUPER_SUPER_RARE,
	ULTRA_RARE
}

normal_fish = [
"salmon",
"trout",
"bass",
"bass",
"bass",
"bass",
"bass",
"bass",
"bass",
"bass",
"bass",
"bass",
"bass",
"bass",
"bass",
"bass",
"bass",
"catfish",
"carp",
];

common_fish = [
"cod",
"bass",
"mackerel",
"perch",
"pike",
"herring"];

rare_fish = [
"bluefintuna",
"bass",
"goldendorado",
"arowana",
"opah",
"napoleonwrasse"];

super_rare_fish = [


];

super_super_rare_fish = [


];

ultra_rare_fish = [
"coelacanth",
"oarfish",
"devilsholepupfish"];

// roll chances

roll_chance = [ //values are in %
60, // normal
80, //common
90, // rare
95, // super rare 
98, // super super rare 
99.9 // ultra rare
];

chance_size = 1000;


current_fish_name = "spr_bass";
curent_fish_rarity = rarity.COMMON;

pulls = 0;
pulling = false;
pull_amount = 0;
pull_cost = 100;

pitty_counter = 0;  

time = 0;


