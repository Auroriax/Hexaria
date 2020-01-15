//This script stops the currently playing level music, and replaces it with the menu music.
if zenabled() && audio_is_playing(mus_zen) 
 {audio_stop_all(); audio_play_sound(mus_menu,100,true)}
if (ascentabled() || tunnelabled() || decenabled()) && audio_is_playing(mus_beatingsun) 
 {audio_stop_all(); audio_play_sound(mus_menu,100,true)}
if !ascentabled() && !tunnelabled() && !decenabled() && !zenabled() && audio_is_playing(mus_credits)
 {audio_stop_all(); audio_play_sound(mus_menu,100,true)}
