if alarm [11] == -1
{__background_set( e__BG.Alpha, 1, 0.05 );
 alarm[11] = 1;
 window_set_cursor(cr_default); 
 if global.sfx {audio_play_sound(sou_modeselect,0,false)}
 global.tutorial = false;
}

