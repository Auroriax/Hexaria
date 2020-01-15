with o_floor {instance_destroy()} 
if (o_pause)
	o_pause.y = -1000 
if (o_music)
	o_music.y -= 1000;
if (o_sfx)
	o_sfx.y -= 1000;
	
keyboard_string = global.guestname
o_control.alarm[8] = -1; o_control.alarm[9] = -1
instance_create(0,0,o_highscore)

//Tunnelvision rule
with o_tunnel {instance_destroy()}

highscore_add("Played a game mode",highscore_value(1)+1)

//Just to be clear, in Hexaria I use the leaderboard to track player process.
//Why? It is perfect for solely storing one variable (total games played), and saves me from writing my own system.
