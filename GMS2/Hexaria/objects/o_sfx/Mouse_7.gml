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
	if global.sfx == true
	{global.sfx=false; image_index=1; instance_create(x+31-12,y+31,o_hexshrink)}
	else
	{global.sfx=true ; image_index=0; instance_create(x+31-12,y+31,o_hexgrow); audio_play_sound(sou_turnon,0,false)}

}
