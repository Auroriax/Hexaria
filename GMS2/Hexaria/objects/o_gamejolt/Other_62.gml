var resultid = gj_result_id()
if(resultid==login)
{
 if gj_result_status() == true
 {show_message_async(text[51]+" "+gj_user_username()+"!");
 gj_trophy_add("17640")
 if o_mainmenu.drawcolor = color
 {
 changemenugem(global.defcolor,global.defname,global.defdesc,false)
 window_set_cursor(cr_default)
 }
}
 else
 {show_message_async(text[50]+"##"+gj_result_error())}
 image_index = 0
}

gj_result_clear()

