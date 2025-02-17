enum rarity {
	NORMAL,
	COMMON, //?
	RARE,
	SUPER_RARE,
	SUPER_SUPER_RARE,
	ULTRA_RARE
}

normal_fish = [

];

common_fish = [
"salmon",
"trout",
"bass",
"catfish",
"carp",
"cod",
"mackerel",
"perch",
"pike",
"herring"];

rare_fish = [
"bluefintuna",
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

roll_chance = [ 
5000, // normal
6000, //common
7500, // rare
9000, // super rare 
9500, // super super rare 
9990 // ultra rare
];

current_fish_name = "spr_bass";
curent_fish_rarity = rarity.COMMON;

pulls = 0;
pulling = false;
pull_amount = 0;

pitty_counter = 0;  

fish_cought = [];


time = 0;


