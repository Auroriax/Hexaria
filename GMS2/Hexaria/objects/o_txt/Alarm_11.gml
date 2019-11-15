status = true
alph = 1.4
alarm[0] = 1

if global.particles == true
effect_create_above(ef_firework,x,y,2,c_white)

if global.sfx == true
{
if txt > 0 && txt <= 150   {audio_play_sound(sou_explosion1,0,false)}
if txt > 150 && txt <= 250 {audio_play_sound(sou_explosion2,0,false)}
if txt > 250 && txt <= 350 {audio_play_sound(sou_explosion3,0,false)}
if txt > 350 && txt <= 500 {audio_play_sound(sou_explosion4,0,false)}
if txt > 500               {audio_play_sound(sou_explosion5,0,false)}
}

if zenabled() && gj_privatekey != ""
{
 with o_control
 {
  request[1] = gj_datastore_update_global("Zen_World", string(other.txt), "add")
  request[0] = gj_datastore_update_global("Zen_"+os_get_region(), string(other.txt), "add")
 }
}

