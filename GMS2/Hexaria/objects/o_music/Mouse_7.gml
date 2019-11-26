	showwarning("A test warning!")
if os_browser == browser_ie
{
	showwarning("Audio is not supported in this browser. Please upgrade or change your browser.")
}
else if !audio_system_is_available()
{
	showwarning("We don't have permission from your browser to play audio. Please check your preferences.")
}
else
{
	if audio_is_playing(mus_menu) || audio_is_playing(mus_zen) || audio_is_playing(mus_credits) || audio_is_playing(mus_beatingsun)
	{
	    audio_stop_all();
	    image_index=1;
	    instance_create(x+31-12,y+31,o_hexshrink);
	    if global.sfx 
	        {audio_play_sound(sou_turnoff,0,false)}
	}
	else
	{
	    startmusic();
	    image_index=0;
	    instance_create(x+31-12,y+31,o_hexgrow);
	    if global.sfx 
	        {audio_play_sound(sou_turnon,0,false)}
	}
}
