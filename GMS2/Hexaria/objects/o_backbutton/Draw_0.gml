if image_index = 1 && alph < 1
alph += 0.05

if image_index = 0 && alph > 0
alph -= 0.025

if instance_exists(o_credits)
{
draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1-alph)
draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,alph)
}

