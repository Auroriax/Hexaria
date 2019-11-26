if o_pause.paused == false
{
	if !position_meeting(x+19,y+89+1,o_block) && !position_meeting(x+19,y+89+1,o_floor)
	{
		for(i=6;i!=0;i-=1)
			{	
			if !position_meeting(x+19,y+89+i,o_block) && !position_meeting(x+19,y+89+i,o_floor)
			{
				y+=i; moved = true; o_control.moved += 1; exit
			}
		}
	}
}
moved = false

if active == false
 {amount = 0}
 
if y <= (-sprite_height/2) && (ascentabled() || decenabled()) && moved == false && !instance_exists(o_highscore) && !o_pause.paused
{gameover()}

//If the game is paused, simply increase the alarm every step
if o_pause.paused == true && alarm[0] >= 1
{alarm[0] += 1}

