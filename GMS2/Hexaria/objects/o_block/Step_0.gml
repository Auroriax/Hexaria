if o_pause.paused == false
for(i=6;i!=0;i-=1)
 {if position_empty(x+19,y+62+27+i) == true
  {y+=i; moved = true; o_control.moved += 1; exit}
 }
moved = false

if active == false
 {amount = 0}
 
if y <= (-sprite_height/2) && (ascentabled() || decenabled()) && moved == false && !instance_exists(o_highscore) && !o_pause.paused
{gameover()}

//This was in a Begin Step event initially- shouldn't make a difference, just saying

//If the game is paused, simply increase the alarm every step
if o_pause.paused == true && alarm[0] >= 1
{alarm[0] += 1}

