/// scr_init()
gml_pragma("global", "scr_init()"); 

// Game Analytics

//Debug
ga_setEnabledInfoLog(false);
ga_setEnabledVerboseLog(false);

// Set build version
ga_configureBuild("html5 v1.1");

/*
 Changes in v1.1
 - fixed blurry by changing the meta viewport tag
*/

ga_initialize("05366fed1940fa2ff388b7327abd501d", "65c9c5ba9ca229de2d7b38a6d4474b0e54252b8a");

//Ad
//jc_ad_position(window_get_height()/2, 0);

//Kongregate
global._k_username = "";
global._k_userid = "";

//Generate new seed
randomize();

//Global vars
global._audio_on = false;
global._delta_time = 1;
global._speed = 0;
global._prev_room = noone;
global._skip_loading_screen = false;
global._show_ads = false;
global._break_ad_after = 500; //after n replays
global._loading_screen_duration = 3 * 60;

global._game_high_score = 0;
global._game_tutorial_show = true;
global._game_play_counter = 0;

//Enums


enum game {
    ready,
    running,
    over,
    pause
}

enum transition {
    ready,
    busy
}

enum _room {
    next,
    prev
}
