alph -= 0.05
growth += 0.0325 //For room speed 60

//alph -= 0.01
//growth += 0.01
draw_sprite_ext(sprite_index,0,x,y,growth,growth,0,c_white,alph)
if alph <= 0
instance_destroy()

