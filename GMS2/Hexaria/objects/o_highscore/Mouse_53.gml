if phase >= 1 && __background_get( e__BG.Alpha, 1 ) == 0 && (mouse_y >= 85 || (mouse_x >= 200 && mouse_x <= 700)) //To make sure that it won't interfere with the twitter/retry button
{__background_set( e__BG.Alpha, 1, 0.05 ); alarm[11] = 1;}

