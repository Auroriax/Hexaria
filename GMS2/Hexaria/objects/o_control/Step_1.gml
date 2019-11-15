if o_pause.paused == true
{
    if alarm[0] >= 1 {alarm[0] += 1}
    if alarm[8] >= 1 {alarm[8] += 1}
    if alarm[9] >= 1 {alarm[9] += 1}
    __background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (__background_get( e__BG.HSpeed, 0 )) )
}
else
{
    if global.bgwrap
    {
        if __background_get( e__BG.X, 0 ) <= -__background_get( e__BG.Width, 0 ) + room_width + 312 {__background_set( e__BG.HSpeed, 0, 0.1 )}
        if __background_get( e__BG.X, 0 ) >= 0 {__background_set( e__BG.HSpeed, 0, -0.1 )}
    }
}

o_control.moved = 0

