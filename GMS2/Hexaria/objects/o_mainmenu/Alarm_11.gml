__background_set( e__BG.Alpha, 1, __background_get( e__BG.Alpha, 1 ) - (0.0125) )
if __background_get( e__BG.Alpha, 1 ) <= 0
{
__background_set( e__BG.Alpha, 1, 0 );
}

if mouse_check_button_pressed(mb_any) || keyboard_check_pressed(vk_anykey)
__background_set( e__BG.Alpha, 1, 0 )

if __background_get( e__BG.Alpha, 1 ) > 0
alarm[11] = 1

