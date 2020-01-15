if !zenabled() && !ascentabled() && !tunnelabled() && !decenabled() {time -= 1}
if decenabled() && !instance_exists(o_highscore) {time += 1} //A time counter showing how long you survived

if time <= 5 && global.sfx == true && time >= 0 && !decenabled()
{audio_play_sound(sou_timewarn,0,false)}

if time != -1
{alarm[0] = 60}
else
{gameover()}

if ascentabled() || decenabled() && global.sfx == true
{
 a = 1000
 with o_block {if y <= o_control.a && moved == false {o_control.a = y}}
  if a <= 50 && global.sfx
  {audio_play_sound(sou_warning,0,false)}
}

if tunnelabled()
{
if o_control.movesleft == 0
{o_control.movesleft = -1; gameover();}
}

