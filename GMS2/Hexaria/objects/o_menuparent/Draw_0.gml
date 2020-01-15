if image_index = 1 && alph < 1
alph += 0.05

if image_index = 0 && alph > 0
alph -= 0.025

draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1-alph)
draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,alph)

if highscore_value(1) >= unlocklevel
{if highscore_value(1) == unlocklevel
  draw_sprite(s_new,0,x,y)}
else
{x= -2000}

