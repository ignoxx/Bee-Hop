/// scr_load_stats()
ini_open(working_directory + "game.ini");
 global._game_high_score = ini_read_real("Game", "Highscore", 0);
 global._game_tutorial_show = ini_read_real("Game", "Tutorial", 1);
ini_close();
