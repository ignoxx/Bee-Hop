/// scr_handle_collision()
var max_jump = 10; //* global._delta_time;

if(!is_dead){
    //Collision for jumping platform
    var col = instance_place(x, y + vspeed, parCollider);
    
    if(instance_exists(col)){
        if(!col.colided){
            col.colided = true;
            
            //sound
            _audio_play_sound(snd_jump);

            //Bounce
            vspeed = -max_jump
            
            //Create animation
            col.visible = false;
            with(instance_create(col.x, col.y, oFlowerAnim)){
                colided = true;
                if(col.is_deadly){
                    sprite_index = sprFlowerBadAnim;
                }
                owner = col;
            }
            
            //Kill bee if it's hitting a bad flower
            if(col.is_deadly){
                is_dead = true;
                sprite_index = sprBeeHit;
                
                //Game over
                oGameController.game_state = game.over;
            } 
        }
    }
    
    //Collision with dead platform
    var col_border = instance_place(x, y + vspeed, oBorder);
    
    if(instance_exists(col_border)){
        vspeed = -(max_jump/2);
        is_dead = true;
        sprite_index = sprBeeHit;
        
        //Game over
        oGameController.game_state = game.over;
    }
    
    var col_pup = instance_place(x, y + vspeed, oPowerup);
    if(instance_exists(col_pup)){
        if(!col_pup.colided){
            col_pup.colided = true;
            oGameController.pup_jump++;
            if(oGameController.pup_jump > 3) oGameController.pup_jump = 3;
            
            col_pup.visible = false;
        }
    }
    
}


