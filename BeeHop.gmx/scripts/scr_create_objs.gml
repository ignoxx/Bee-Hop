/// scr_create_objs()
var min_height = (room_height / 2 );
var max_height = (room_height / 2 ) + 200;
var min_flower_dist = 125;
var rate_of_bad_flowers = irandom_range(5, 10);

for(var i = 0; i < num_of_objs; i++){
    var deadly = (i % rate_of_bad_flowers == 0); 
    
    with(instance_create(min_flower_dist * i, room_height * 1.5, oFlower)){
        is_deadly = deadly;
        if(is_deadly){
            sprite_index = sprFlowerBad;
        }
        ny = random_range(min_height, max_height);
        TweenFire(id, EaseOutQuad, TWEEN_MODE_ONCE, false, random(30), 120, y__, y, ny);
        index = i;
    }
}

//Create powerups
var min_height = 100;
var max_height = (room_height / 2 ) - 175;
var min_pup_dist = 1200;


for(var i = 1; i < num_of_objs; i++){
    with(instance_create(min_pup_dist * i, random_range(min_height, max_height), oPowerup)){
        index = i;
    }
}
