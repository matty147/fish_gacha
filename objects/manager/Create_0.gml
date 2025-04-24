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

numb_of_scenes = 2;

hidden_your_fish = true;
hidden_fishtiary = true;
hidden_warnings = true;

//display_name = "";
//sprite_name = "";
//like = ["banana","tropical"];
//no_like = ["other fish"];
//weight = 120;
//grid_size = "4x2";
//_rarity = "c";

fish_type_list = [
    [
        "Bass",
        "bass",
        ["banana", "tropical"],
        ["other fish"],
        120,
        "4x2",
        "c"
    ],
    [
        "Arowana",
        "arowana",
        ["cold", "river"],
        ["insects", "smaller fish"],
        150,
        "5x2",
        "n"
    ],
    [
        "Perch",
        "perch",
        ["toxic", "ocean"],
        ["algae", "crustaceans"],
        80,
        "3x2",
        "c"
    ],
    [
        "Cod",
        "cod",
        ["coral", "reef"],
        ["algae", "plankton"],
        60,
        "2x1",
        "r"
    ],
    [
        "Opah",
        "opah",
        ["fast", "deep sea"],
        ["smaller fish", "squid"],
        300,
        "6x3",
        "sr"
    ],
    [
        "Goldendorado",
        "goldendorado",
        ["deep", "scary"],
        ["fish", "crustaceans"],
        250,
        "4x3",
        "ssr"
    ],
    [
        "Coelacanth",
        "coelacanth",
        ["pond", "cute"],
        ["flakes", "algae"],
        20,
        "2x1",
        "ur"
    ],
    [
        "Oarfish",
        "oarfish",
        ["predator", "ocean"],
        ["fish", "seals"],
        500,
        "8x4",
        "ur"
    ],
    [
        "Coelacanth",
        "coelacanth",
        ["sharp", "fast"],
        ["fish", "squid"],
        400,
        "7x3",
        "sr"
    ],
    [
        "Catfish",
        "catfish",
        ["muddy", "river"],
        ["insects", "plants"],
        100,
        "4x2",
        "c"
    ]
];

