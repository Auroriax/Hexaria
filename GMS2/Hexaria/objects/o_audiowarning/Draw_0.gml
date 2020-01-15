/// @description Display message

if str != "" && time <= 300
{
	time += 1
	var alph = max(0, 1 - ((time - 250) / 50))
	show_debug_message(alph);
	
	draw_set_alpha(0.9*alph)
	draw_set_color(c_white);
	if time <= 3 {draw_set_color(c_red);}
	draw_rectangle(x,y,x+width,y+height,false)
	draw_set_alpha(1*alph)
	draw_set_color(c_red)
	draw_rectangle(x,y,x+width,y+height,true)

	draw_set_color(c_black)
	draw_set_halign(0); draw_set_valign(0)
	draw_set_font(f_small)
	draw_text_ext(x+margin,y+margin,str,-1,width-margin*2)
	
	draw_set_alpha(1);
}