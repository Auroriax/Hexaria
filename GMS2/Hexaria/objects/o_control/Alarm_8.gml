//Special rules for Downpour mode
var maxy, xx, yy;
xx = -1; yy = -1

for(i=0;i!=21;i+=1)
{
 miny[i] = room_height
 with o_block 
  {if y < other.miny[other.i] && x == 286+(other.i*23) {other.miny[other.i] = y; }
 }
 if miny[i] > yy {yy = miny[i]; xx = 286+(i*23);}
}

if !instance_exists(o_highscore)
instance_create(xx,-60,o_block)

//instance_create(286+(irandom(21))*23,-60,o_block) //Completely random

if fallspeed > 10 {fallspeed = power(fallspeed,0.999);}
alarm[8] = round(fallspeed)

