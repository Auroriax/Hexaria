draw_set_font(f_zerothrees28); draw_set_halign(1)
var txt = "Click anywhere to play!"
if alarm[0] == -1 {txt = "Sorry, this game#is sitelocked!"}
if alarm[1] > 0 {txt = ""}

txtoutline(room_width/2,room_height*0.7,txt,c_white)
draw_text_color(room_width/2,room_height*0.7,string_hash_to_newline(txt),c_black,c_black,c_black,c_black,1)

