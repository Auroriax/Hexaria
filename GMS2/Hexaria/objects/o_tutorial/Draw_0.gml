draw_set_font(f_small)

var hgt;
hgt = string_height_ext(string_hash_to_newline(tut[ind]),-1,width)

//Background
draw_set_alpha(0.45); draw_set_color(c_black)
draw_rectangle(x-width/2,y-hgt/2,x+width/2,y+5+hgt/2,0)

//Text
draw_set_halign(1); draw_set_valign(1); draw_set_color(c_white); draw_set_alpha(1);
draw_text_ext(x,y,string_hash_to_newline(tut[ind]),-1,width)

//Rect
draw_set_alpha(1); draw_set_color(c_white)
draw_rectangle(x-width/2,y-hgt/2,x+width/2,y+5+hgt/2,1)
draw_set_alpha(alph)
draw_rectangle(x-width/2,y+2+hgt/2,x+width/2,y+5+hgt/2,0)

//Draw example
var c = 0;
if (ind == 3 || ind == 4)
{
    c[0] = c_red; c[1] = $FFB200;
    c[2] = c_red; c[3] = $FFB200;
} else if (ind == 5)
{
    c[0] = c_red; c[1] = $FFB200; c[2] = c_lime
    c[3] = c_red; c[4] = $FFB200; c[5] = c_lime
}
if (c != 0) {
    draw_set_alpha(0.45); draw_set_color(c_black)
    draw_rectangle(x-width/2,y-70-hgt/2,x+width/2,y-1-hgt/2,0)
    draw_set_alpha(1)
    
    var xx = x+30;
    if array_length_1d(c) == 4 {xx -= width/3}
    else {xx -= width/2}
    
    var yy = y-70-hgt/2+4;
    
    for(var i = 0; i != array_length_1d(c); i += 1)
    {
        draw_sprite_ext(s_white,0,xx,yy,1,1,0,c[i],1)
        txtoutline(xx+31,yy+41,string(i+1),c_white)
        draw_set_color(c_black)
        draw_text(xx+31,yy+41,string_hash_to_newline(string(i+1)))
        xx += 50;
    }

}

draw_set_alpha(1); draw_set_color(c_white); draw_set_valign(0)



