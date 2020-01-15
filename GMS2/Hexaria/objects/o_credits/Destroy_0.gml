with all {y -= 600}
o_stars.y+=600
o_backbutton.y+=600
if !COOLMATH
{
o_website.y -=600
o_credits.y -=600
}

audio_stop_sound(mus_credits)
audio_sound_gain(mus_menu, 1, 1500);

if sethelpbackon == true
{o_help.image_index = false}

