draw_sprite_ext(sprite_index,0,x,y,1,1,0,drawcolor,1)

draw_set_halign(fa_center); draw_set_color(drawcolor); 
if smallfont {draw_set_font(f_zerothrees24)} else {draw_set_font(f_zerothrees28)}
draw_text_ext(x+3,y+25,string_hash_to_newline(name),33,-1)

draw_set_font(f_small); draw_set_valign(fa_bottom)
draw_text_ext(x+3,y+25,string_hash_to_newline(description),15,180) //x+3,y+60,description,15,-1

draw_set_valign(fa_top)

if mouse_check_button(mb_middle) || window_get_fullscreen()
{
var minute, second
minute = current_minute; second = current_second

if minute <= 9 {minute = "0"+string(minute)} else {minute = string(minute)}
if second <= 9 {second = "0"+string(second)} else {second = string(second)}
draw_text(x,y+65,string_hash_to_newline(string(current_hour) + ":" + minute + "." + second))
}

draw_set_color(c_white)
draw_text(x,y-300-(alarm[0]*5),string_hash_to_newline(news)) //Disable for trailer

