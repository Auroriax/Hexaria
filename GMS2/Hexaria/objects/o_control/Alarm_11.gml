__background_set( e__BG.Alpha, 1, __background_get( e__BG.Alpha, 1 ) - (0.05) )
if __background_get( e__BG.Alpha, 1 ) <= 0
{
__background_set( e__BG.Alpha, 1, 0 );
}

if mouse_check_button_pressed(mb_any) || keyboard_check_pressed(vk_anykey) //Quickly skip the room transition
__background_set( e__BG.Alpha, 1, 0 )

if __background_get( e__BG.Alpha, 1 ) > 0
{alarm[11] = 1}
else
{if gj_privateset() {gj_datastore_update_global(global.leaderboardid+"_Begin","1","add")}}

