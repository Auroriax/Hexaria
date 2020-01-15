with all {y += 600}

o_stars.y -=600
o_credits.y -=600
o_backbutton.y -=600
if !COOLMATH
{
o_website.y -=600
o_twitter.y -=600
}

if audio_is_playing(mus_menu)
{
audio_play_sound(mus_credits,100,true)
audio_sound_gain(mus_credits, 0, 0);
audio_sound_gain(mus_credits, 1, 1500);
audio_sound_gain(mus_menu, 0, 1500);
}

if o_help.image_index == false
{o_help.image_index = true; sethelpbackon = true}
else
{sethelpbackon = false}

