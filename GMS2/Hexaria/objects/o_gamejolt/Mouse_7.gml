window_set_cursor(cr_default)

if !gj_user_isloggedin()
{
 var uname, utoken;
 uname = get_string(text[48],"")
 if uname != ""
 {
  utoken = get_string(text[49],"")
  if utoken != ""
  login = gj_user_login(uname,utoken)
 }
}
else
{
if show_question(text[52]+" "+gj_user_username()+".##"+text[53])
{gj_user_logout(); show_message(text[54]); image_index = 1 }
}

