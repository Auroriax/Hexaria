if bonus == true
{
score += 250
b = instance_create(x+20,y,o_txtnogameplay);
(b).txt = 250;
(b).alarm[11] = 1;
if global.sfx == true
{audio_play_sound(sou_bonus,0,false)}
if global.particles == true
 {effect_create_above(ef_firework,x+(sprite_width/2)-13,y+(sprite_height/2),1,c_orange)}
}

if locked == true
{
 if global.particles == true
 {effect_create_above(ef_firework,x+(sprite_width/2)-13,y+(sprite_height/2),1,c_black)}
 locked = false; exit
}
else
{
 instance_destroy()
}

