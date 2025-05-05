if !audio_is_playing(snd_bg_music)
{
	audio_play_sound(snd_bg_music,0,true);
}

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

if !variable_global_exists("upgrade_status")
{
	global.upgrade_status = [
	0, //better bait
	0, //rod
	0 //strenght
	];
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
        5, //4
        "4x2", //5
        "n", //6
		//------------ behaviour data 7-
		10011, //7,
		10,
		"mini_fish",
		1
		
    ],
    [
        "blob fish",
        "blob_fish",
        ["cold", "river"],
        ["insects", "smaller fish"],
        10,
        "5x2",
        "c",
		11100, //7,
		10,
		"-",
		1
    ],
    [
        "Flat fuck",
        "flat_fuck",
        ["toxic", "ocean"],
        ["algae", "crustaceans"],
        20,
        "3x2",
        "r",
		10000, //7,
		10,
		"-",
		1
    ],
    [
        "Macrell",
        "macrell",
        ["coral", "reef"],
        ["algae", "plankton"],
        60,
        "2x1",
        "sr",
		11100, //7,
		10,
		"-",
		1
    ],
    [
        "Mini fish",
        "mini_fish",
        ["fast", "deep sea"],
        ["smaller fish", "squid"],
        1,
        "6x3",
        "ssr",
		10001, //7,
		10,
		"kysela_rybicka",
		100
    ],
    [
        "smelly can",
        "smelly_can",
        ["deep", "scary"],
        ["fish", "crustaceans"],
        250,
        "4x3",
        "ur",
		11001, //7,
		10,
		"-",
		15
    ],
    [
        "kysela rybicka",
        "kysela_rybicka",
        ["deep", "scary"],
        ["fish", "crustaceans"],
        1,
        "4x3",
        "ur",
		11001, //7,
		10,
		"mini_fish",
		15
    ]];

