if image_index = 1
if alph != 1
{
    alph += 0.10
    if alph > 1 {alph = 1}
}
    
if image_index = 0
if alph != 0
{
    alph -= 0.10 //For room speed 60
    if alph < 0 {alph = 0}
}
    
draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1-alph)
draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,alph)

