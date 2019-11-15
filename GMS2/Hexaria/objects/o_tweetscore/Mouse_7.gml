if gj_user_isloggedin() {gj_trophy_add("17659")}

var a, b, c;
a = string(score)
b = room_get_name(room)
b = string_copy(b,4,string_length(b))
b = string_upper(string_copy(b,0,1)) + string_copy(b,2,string_length(b))
switch irandom(8)
{
case 0: c = "Let's see if you can beat that!"; break;
case 1: c = "Can you do better?"; break;
case 2: c = "Feel free to topple it."; break;
case 3: c = "Will you take the challenge?"; break;
case 4: c = "You'll never beat that score!"; break;
case 5: c = "Who wants to duel for the best score?"; break;
case 6: c = "It has hexagons and METEOR STORMS!"; break;
case 7: c = "So, who thinks he can refine that score"; break;
case 8: c = "Do you really think you can get more points than me?"; break;
}
url_open_ext("https://twitter.com/intent/tweet?text=I%20scored%20"+a+"%20points%20in%20the%20"+b+"%20mode%20in%20%23Hexaria ! "+c+" http://gamejolt.com/games/puzzle/hexaria/44053/&source=webclient","_blank")

//Prevent the game from exitting to the main menu
//background_alpha[1] = 0; alarm[11] = -1; //Doesn't work

