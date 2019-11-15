var resultid = gj_result_id()
if(resultid==request[0])
{
{
 if gj_result_status()
 {request[1] = gj_scores_get(global.leaderboardid, 25) leaderboards = text[31];}
 else
 {leaderboards = text[32] +"#"+ gj_result_error()}
}
}
if(resultid==request[1]) //If we just recieved the highscore. 
{
    if(gj_result_status())
    {
        for(i=0;i<gj_result_data_count();i+=1)
        {
         score_sort[i+1]=gj_result_data_field_num("score",i)
         displayname[i+1] = gj_result_data_field_num("display_name",i)
         if string_width(string_hash_to_newline(displayname[i+1])) >= 290 //string_length(displayname[i+1]) > 23
         {displayname[i+1] = string_copy(displayname[i+1],0,17)+"..."}
         stored[i+1] = gj_result_data_field_num("stored",i)
         if gj_result_data_field_num("is_guest",i) == true
         {img_index[i+1] = 5} 
         else 
         {img_index[i+1] = 0; userreq[i+1] = gj_user_info_fromusername(string(displayname[i+1]))}
        }
    leaderboards = ""
    }
    else
    leaderboards=text[34]
}
if(resultid==request[2]) //If we just recieved the total plays. 
{   if(gj_result_status())
    {totalplay = gj_result_data_field("data")}
    else
    totalplay="???"
}

if(resultid==request[3]) //If we just recieved the total score. 
{   if(gj_result_status())
    {totalscore = gj_result_data_field("data")}
    else
    totalscore="???"
}

if(resultid==request[4]) //If we just recieved the total amount of matches
{   if(gj_result_status())
    {totalmatches = gj_result_data_field("data")}
    else
    totalmatches="???"
}

if(resultid==request[5]) //If we just recieved the total amount of gems.
{   if(gj_result_status())
    {totalgems = gj_result_data_field("data")}
    else
    totalgems="???"
}

for(i=1;i<=25;i+=1)
{
 if(resultid==userreq[i])
 {if(gj_result_status())
  {
   switch string(gj_result_data_field("type"))
   {case "0": img_index[i] = 0; break;
    case "User": img_index[i] = 1; break;
    case "Developer": img_index[i] = 2; break;
    case "Moderator": img_index[i] = 3; break;
    case "Administrator": img_index[i] = 4; break;
   }
   if gj_result_data_field("id") == "73237" {img_index[i] = 6}
  }
 else {img_index[i] = 0}
 }
}

gj_result_clear()

