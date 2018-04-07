/// _audio_play_sound(snd)

if(!global._audio_on) exit;

switch(argument[0]){
    case snd_background:
            if(room == rm_main){
                audio_sound_gain(snd_background, 0, 0);
            }
            
            if(room == rm_loading){
                audio_sound_gain(snd_background, .1, 1000);
            }
            
            if(room == rm_menu){
                audio_sound_gain(snd_background, .1, 1000);
            }
            
            if(!audio_is_playing(snd_background)){
                audio_play_sound(snd_background, 0, true);
            }
        break;
    
    case snd_click:
        audio_sound_gain(snd_click, .1, 0);
        audio_play_sound(snd_click, 0, false);
        break;
    
    case snd_jump:
        audio_sound_gain(snd_jump, .1, 0);
        audio_play_sound(snd_jump, 0, false);
        break;

    case snd_success:
        audio_sound_gain(snd_success, .2, 0);
        audio_play_sound(snd_success, 0, false);
        break;
    
    case snd_loose:
        audio_sound_gain(snd_loose, .2, 0);
        audio_play_sound(snd_loose, 0, false);
        break;
}
