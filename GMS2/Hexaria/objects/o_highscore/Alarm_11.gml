__background_set( e__BG.Alpha, 1, __background_get( e__BG.Alpha, 1 ) + (0.05) )

if __background_get( e__BG.Alpha, 1 ) >= 1
{
__background_set( e__BG.Alpha, 1, 1 )
stopmusic()
audio_sound_gain(mus_menu, 1, 1000); audio_sound_gain(mus_zen, 1, 1000); audio_sound_gain(mus_credits,1,1000)
score=0; room_goto(rm_main)}

alarm[11] = 1

