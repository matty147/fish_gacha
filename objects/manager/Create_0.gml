
debug_log = false;
window_set_fullscreen(true);

if !variable_global_exists("money")
{
	global.bait = 999999;
}

if !variable_global_exists("money")
{
	global.money = 99999999999999;
}

if !variable_global_exists("time")
{
	global.time = 0;
}

if !variable_global_exists("curent_scene")
{
	show_debug_message("set");
	global.curent_scene = 0;
}

if !variable_global_exists("fish_cought")
{
	global.fish_cought = [];	
}

if !variable_global_exists("fish_deployed")
{
	global.fish_deployed = [];	
}

if !variable_global_exists("warnings")
{
	global.warnings = [];	
}

if !variable_global_exists("mess")
{
	global.mess = [];	
}

numb_of_scenes = 2;

hidden_your_fish = true;
hidden_fishtiary = true;
hidden_warnings = true;

grabbing_fish = false;

//--------------------------------------------- display data
//display_name = "";
//sprite_name = "";
//like = ["banana","tropical"];
//no_like = ["other fish"];
//weight = 120;
//grid_size = "4x2";
//_rarity = "c";

//--------------------------------------------- behaviour data 7
//turn on/off viz scripts -> fish conditions
//too_crowded
//racist
//attack_fish
//atack_fish_victim
//attack_smaller_fish

//--------------------------------------------- setting variables
//crowded_limit = 5;
//attack_at_fish = "cod";
//fish_size = 5;


fish_type_list = [
    [
	//------------ display data 0-6
        "Bass", //0
        "bass", //1
        ["banana", "tropical"], //2
        ["other fish"], //3
        120, //4
        "4x2", //5
        "c", //6
		//------------ behaviour data 7-
		10011, //7,
		10,
		"arowana",
		1
		
    ],
    [
        "Arowana",
        "arowana",
        ["cold", "river"],
        ["insects", "smaller fish"],
        150,
        "5x2",
        "n",
		11100, //7,
		10,
		"-",
		1
    ],
    [
        "Perch",
        "perch",
        ["toxic", "ocean"],
        ["algae", "crustaceans"],
        80,
        "3x2",
        "c",
		10000, //7,
		10,
		"-",
		1
    ],
    [
        "Cod",
        "cod",
        ["coral", "reef"],
        ["algae", "plankton"],
        60,
        "2x1",
        "r",
		11100, //7,
		10,
		"-",
		1
    ],
    [
        "Opah",
        "opah",
        ["fast", "deep sea"],
        ["smaller fish", "squid"],
        300,
        "6x3",
        "sr",
		10001, //7,
		10,
		"arowana",
		100
    ],
    [
        "Goldendorado",
        "goldendorado",
        ["deep", "scary"],
        ["fish", "crustaceans"],
        250,
        "4x3",
        "ssr",
		11001, //7,
		10,
		"opah",
		15
    ],
    [
        "Coelacanth",
        "coelacanth",
        ["pond", "cute"],
        ["flakes", "algae"],
        20,
        "2x1",
        "ur",
		10110, //7,
		10,
		"goldendorado",
		1
    ],
    [
        "Oarfish",
        "oarfish",
        ["predator", "ocean"],
        ["fish", "seals"],
        500,
        "8x4",
        "ur",
		10101, //7,
		10,
		"arowana",
		3
    ],
    [
        "Coelacanth",
        "coelacanth",
        ["sharp", "fast"],
        ["fish", "squid"],
        400,
        "7x3",
        "sr",
		10000, //7,
		10,
		"catfish",
		7
    ],
    [
        "Catfish",
        "catfish",
        ["muddy", "river"],
        ["insects", "plants"],
        100,
        "4x2",
        "c",
		00000, //7,
		7,
		"oarfish",
		5
    ]
];

