if image_index = 1 && alph < 1
alph += 0.05

if image_index = 0 && alph > 0
alph -= 0.025

if instance_exists(o_credits)
{
draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1-alph)
draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,alph)
}
else if (os_browser == browser_not_a_browser)
{draw_sprite_ext(s_exitgame,0,x,y,1,1,0,c_white,1-alph)
draw_sprite_ext(s_exitgame,1,x,y,1,1,0,c_white,alph)
draw_set_halign(2)
draw_text_colour(x+40,y+40,string_hash_to_newline(text[66]),c_white,c_white,c_white,c_white,alph)
draw_set_halign(0)
}

