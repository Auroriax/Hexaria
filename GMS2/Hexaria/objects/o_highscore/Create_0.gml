flashy = " ";
phase = 0;
alph = 0;
leaderboards = text[30];
request[0] = -1; request[1] = -1; request[2] = -1
request[3] = -1; request[4] = -1; request[5] = -1

totalplay = "?"; totalscore = "?"
totalmatches = "?"; totalgems = "?"

for (i=1;i<=25;i+=1)
{
displayname[i] = ""
score_sort[i] = ""
stored[i] = ""
img_index[i] = 5

userreq[i] = -1
}

if gj_user_isloggedin() == true
{
var visscore;
visscore = preparesendscore()
request[0] = gj_scores_add(global.leaderboardid, visscore, score,string(o_control.matches)+"_"+string(o_control.gemsmatched))

/* GJ Trophies */  gj_trophy_add(global.trophybase)
if score >= 5000  {gj_trophy_add(string(real(global.trophybase)+1))}
if score >= 10000 {gj_trophy_add(string(real(global.trophybase)+2))}
}

restore() //Makes sure no more moves can be made after the game ends

instance_create(130,20,o_restart); instance_create(750,20,o_tweetscore);
if !gj_privateset() {phase = 2}

if global.sfx
{audio_play_sound(sou_gameover,0,false)}

/* */
action_set_alarm(30, 0);
/*  */
