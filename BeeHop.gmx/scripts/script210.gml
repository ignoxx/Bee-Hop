/// scr_handle_input()
if(is_dead || oGameController.game_state != game.running) then exit;

var screen_width = browser_width;
var screen_height = browser_height;

//Keyboard inputs
var key_left = keyboard_check(vk_left) || keyboard_check(ord('A'));
var key_right = keyboard_check(vk_right) || keyboard_check(ord('D'));
var key_space = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord('W'));


var mouse, mouse_pressed, mx, my;
var left = false, right = false, jump = false;

//Check for multitouch
for(var i = 0; i <= 1; i++){
    mouse[i] = device_mouse_check_button(i, mb_left); 
    mouse_pressed[i]  = device_mouse_check_button_pressed(i, mb_left);
    mx[i] = device_mouse_x_to_gui(i);
    my[i] = device_mouse_y_to_gui(i);
    
    if(mouse_pressed[i]){
        if(alarm[0] >= -1 && point_distance(mx[i], my[i], prev_mouse_x, prev_mouse_y) < 10) then jump = true; 
        else{
            prev_mouse_x = mx[i]; prev_mouse_y = my[i]; alarm[0] = 11;
        }
    }  
    else 
    if(mouse[i]){
        left  = (mx < screen_width/2) || key_left;
        right = (mx > screen_width/2) || key_right;
    }
}

//Wing flap
if(jump && oGameController.pup_jump > 0){
    vspeed = -10;
    oGameController.pup_jump--;
}

// Move the bee
if(left){
    nx -= 3 * global._delta_time;
}

if(right){
    nx += 4 * global._delta_time;
}

//lerp position
x = lerp(x, nx, .1);
