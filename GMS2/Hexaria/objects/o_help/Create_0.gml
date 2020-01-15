action_inherited();
color= c_orange
name = text[17]
desc = text[18]

//image_index = 1
//dist= 0
unlocklevel = 0
smallfont = false

alph = 0
image_speed = 0

//imgindex[1] = 0 //For the tutorial animations
//imgindex[2] = 0

if highscore_value(1) = 0 //If this is the first time this game is launched on this system
{
global.tutorial = true; highscore_add("First startup",1); room_goto(rm_zen);
//image_index = 0; alarm[11] = 1; highscore_add("First startup",1)
}

