if phase == 0
{
if keyboard_string == ""
{keyboard_string = "Guest"+string(irandom_range(100000,999999))}
global.guestname = keyboard_string
var visscore;
visscore = preparesendscore()
request[0] = gj_scores_add_guest(global.leaderboardid, visscore, score,string(o_control.matches)+"_"+string(o_control.gemsmatched),keyboard_string)
}
else
if __background_get( e__BG.Alpha, 1 ) == 0
{{__background_set( e__BG.Alpha, 1, 0.05 ); alarm[11] = 1;}}

