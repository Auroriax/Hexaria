request[2] = gj_datastore_update_global(global.leaderboardid+'_Plays', "1", "add")
request[3] = gj_datastore_update_global(global.leaderboardid+'_Score', string(score), "add")
request[4] = gj_datastore_update_global(global.leaderboardid+'_Match', string(o_control.matches), "add")
request[5] = gj_datastore_update_global(global.leaderboardid+'_GemsM', string(o_control.gemsmatched), "add")

phase = 1
 
var visscore;
visscore = string(score)
for (i=string_length(string(score));i!=7;i+=1)
 {visscore = "0"+visscore}
return(visscore)
