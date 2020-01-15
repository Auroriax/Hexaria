if alph >= 0.99 {alph = (-0.11/10)}
alph += 0.1/10

draw_sprite_ext(sprite_index,0,x,y,1,1,0,-1,1-alph)
draw_sprite_ext(sprite_index,1,x,y,1,1,0,-1,  alph)

