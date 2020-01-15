if image_index = 1 && alph < 1
alph += 0.05

if image_index = 0 && alph > 0
alph -= 0.025

draw_sprite_ext(sprite_index,0,x,y,1,1,rot,c_white,1-alph)
draw_sprite_ext(sprite_index,1,x,y,1,1,rot,c_white,alph)

