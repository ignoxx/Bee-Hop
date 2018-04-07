/// scr_render()
var min_height = (room_height / 2 ) - 75;
var max_height = (room_height / 2 ) + 225;
var min_flower_dist = 125;

/*
var game_score = oGameController.game_score;


if(game_score > 1000) min_flower_dist += 25;
if(game_score > 2000) min_flower_dist += 25;
if(game_score > 3000) min_flower_dist += 25;
if(game_score > 4000) min_flower_dist += 25;
*/

with(parCollider){
    if( x < -100 ){
        x = min_flower_dist * (other.num_of_objs + index);
        y = random_range(min_height, max_height);
        index = other.num_of_objs + index;
    }
}

//Powerup
min_flower_dist = 1200;
min_height = 100;
max_height = (room_height / 2 ) - 175;

with(oPowerup){
    if( x < -100 ){
        x = min_flower_dist * (other.num_of_objs + index);
        y = random_range(min_height, max_height);
        index = other.num_of_objs + index;
        visible = true;
    }
}
