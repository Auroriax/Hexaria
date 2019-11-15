if image_index = 1 && alph < 1
alph += 0.05

if image_index = 0 && alph > 0
alph -= 0.025

if y != ystart
y += 5

draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1-alph)
draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,alph)

draw_set_font(f_droidmono20); draw_set_halign(fa_left); draw_set_alpha(alph); 
draw_text(x+44,y+12,string_hash_to_newline(text[46])); draw_set_alpha(1);

