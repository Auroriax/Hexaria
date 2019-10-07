///scr_drawtxtoutline(x,y,string[,color, width, alpha, separation, multiplier])
///Make sure to call this before you draw the text you want to outline!

var clr = draw_get_colour()
if argument_count >= 4 {clr = argument[3]}
var wdt = -1; var sep = -1; var alph = draw_get_alpha(); var mpl = 1;
if argument_count >= 5 {wdt = argument[4]}
if argument_count >= 6 {alph = argument[5]}
if argument_count >= 7 {sep = argument[6]}
draw_text_ext_colour(argument[0]+1,argument[1] +mpl,argument[2],sep,wdt,clr,clr,clr,clr,alph)
draw_text_ext_colour(argument[0]+1,argument[1] -mpl,argument[2],sep,wdt,clr,clr,clr,clr,alph)
draw_text_ext_colour(argument[0]-1,argument[1] +mpl,argument[2],sep,wdt,clr,clr,clr,clr,alph)
draw_text_ext_colour(argument[0]-1,argument[1] -mpl,argument[2],sep,wdt,clr,clr,clr,clr,alph)

draw_text_ext_colour(argument[0],argument[1] -mpl,argument[2],sep,wdt,clr,clr,clr,clr,alph)
draw_text_ext_colour(argument[0] -mpl,argument[1],argument[2],sep,wdt,clr,clr,clr,clr,alph)
draw_text_ext_colour(argument[0],argument[1] +mpl,argument[2],sep,wdt,clr,clr,clr,clr,alph)
draw_text_ext_colour(argument[0] +mpl,argument[1],argument[2],sep,wdt,clr,clr,clr,clr,alph)
