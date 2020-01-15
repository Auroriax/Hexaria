window_set_cursor(cr_default)

if o_zen.alarm[10] == -1 && o_zen.alarm[11] == -1
{
 __background_set( e__BG.Alpha, 1, 0.05 );
 o_zen.alarm[11] = 1;
 window_set_cursor(cr_default); 
 if global.sfx {audio_play_sound(sou_modeselect,0,false)}
 global.tutorial = true;
}

