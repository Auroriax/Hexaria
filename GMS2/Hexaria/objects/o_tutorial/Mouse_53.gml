draw_set_font(f_small)

var hgt;
hgt = string_height_ext(string_hash_to_newline(tut[ind]),-1,width)

if mouse_x > x-width/2 && mouse_x < x+width/2 && mouse_y < y+5+hgt/2 && mouse_y > y-hgt/2
{
if ind == 8
{exitlevel(); o_pause.alarm[10] = 1}
if ind != 4 && ind != 5 && ind != 8
ind += 1
alph = 0.99
}

