if !gj_user_isloggedin()
changemenugem(color,name,desc,true)
else
changemenugem(color,name,gj_user_username(),true)

window_set_cursor(cr_handpoint)

