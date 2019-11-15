if global.coloricon == true
{global.coloricon=false; 
 image_index=1; 
 instance_create(x+31-12,y+31,o_hexshrink); 
 if global.sfx {audio_play_sound(sou_turnoff,0,false)}
}
else
{global.coloricon=true ;
 image_index=0; 
 instance_create(x+31-12,y+31,o_hexgrow); 
 if global.sfx {audio_play_sound(sou_turnon,0,false)}
}

