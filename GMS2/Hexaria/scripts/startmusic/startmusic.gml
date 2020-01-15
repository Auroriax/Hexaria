//This function assumes the music setting is enabled.

if room == rm_main
{
    audio_play_sound(mus_menu,100,true)
}
else if !ascentabled() && !tunnelabled() && !decenabled() && !zenabled()
{
    audio_play_sound(mus_credits,100,true)
} //No special mode
else if (ascentabled() || tunnelabled() || decenabled())
{
    audio_play_sound(mus_beatingsun,100,true)
}
else if zenabled()
{
    audio_play_sound(mus_zen,100,true)
}
