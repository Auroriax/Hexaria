__background_set( e__BG.Alpha, 1, __background_get( e__BG.Alpha, 1 ) + (0.05) )
if __background_get( e__BG.Alpha, 1 ) >= 1
{
__background_set( e__BG.Alpha, 1, 1 )
stopmusic(); score=0; window_set_cursor(cr_default); room_goto(rm_main);
}

alarm[10] = 1

