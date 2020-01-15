//Draws the reset and exit buttons
if distance >= 1 //&& paused == true
{
 if mouseover(x-52,x-6,y,y+61)
  {draw_sprite_ext(sprite_index,6,x-distance,y,1,1,0,c_white,distance*2.1/100)}
 else
  {draw_sprite_ext(sprite_index,2,x-distance,y,1,1,0,c_white,distance*2.1/100)}
  
 if mouseover(x+44,x+92,y,y+61)
  {draw_sprite_ext(sprite_index,7,x+distance,y,1,1,0,c_white,distance*2.1/100)}
 else
  {draw_sprite_ext(sprite_index,3,x+distance,y,1,1,0,c_white,distance*2.1/100)}
  
  draw_set_font(f_mysterions48); draw_set_valign(1);
  draw_text_colour(370,300,string_hash_to_newline(text[71]),c_white,c_white,c_white,c_white,distance*2.1/100)
  draw_set_valign(0);
}

//Draw the Pause button when unpaused, and the play button when paused (variable paused).
draw_sprite(sprite_index,paused+(mouseover(x-3,x+41,y,y+61)*4),x,y)

