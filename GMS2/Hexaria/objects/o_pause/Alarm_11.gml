__background_set( e__BG.Alpha, 1, __background_get( e__BG.Alpha, 1 ) + (0.05) )

if __background_get( e__BG.Alpha, 1 ) >= 1
{
__background_set( e__BG.Alpha, 1, 1 )
score=0; window_set_cursor(cr_default); room_restart()
}

alarm[11] = 1

