restore()
if o_control.time >= 0 && o_pause.alarm[10] == -1 && o_pause.alarm[11] == -1
{
 if paused == false
 {
  paused = true;
  effect_clear();
  audio_sound_gain(mus_menu,0.3,3000); audio_sound_gain(mus_zen,0.3,3000); audio_sound_gain(mus_credits,0.3,3000);
  audio_sound_gain(mus_beatingsun, 0.3, 3000);
  instance_create(x+31-12,y+31,o_hexgrow);
  window_set_cursor(cr_default);
 }
 else
 {
  paused = false;
  audio_sound_gain(mus_menu,1,1000);
  audio_sound_gain(mus_zen,1,1000);
  audio_sound_gain(mus_credits,1,1000);
  audio_sound_gain(mus_beatingsun,1,1000);
  instance_create(x+31-12,y+31,o_hexshrink);
 }
}
