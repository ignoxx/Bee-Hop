/// scr_save_stats()
ini_open(working_directory + "game.ini");
 ini_write_real("Game", "Highscore", global._game_high_score);
 ini_write_real("Game", "Tutorial", global._game_tutorial_show);
ini_close();
