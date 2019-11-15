if o_pause.paused == false
{
   
 if active = true
 {
  //Draw hexagon, color indicator if enabled, and the amount number.
  draw_sprite_ext(sprite_index,0,x,y,1,1,0,colori(color_index),1)
  if locked == true {draw_sprite(s_lock,global.coloricon,x,y)}
  if global.coloricon == 1  {draw_sprite_ext(s_colorblind,color_index,x+3,y+15,1,1,0,c_white,0.75)}
  draw_set_halign(fa_center); draw_set_font(f_small)
  var outlinecolor = c_black;
  if o_control.valid >= 0 {draw_set_color(c_black); outlinecolor = c_lime}
  txtoutline(x+sprite_width/2,y+sprite_height/2,string(amount),outlinecolor)
  draw_text(x+sprite_width/2,y+sprite_height/2,string_hash_to_newline(string(amount)))
  draw_set_color(c_white)
 }
 else
 {
  draw_sprite_ext(sprite_index,0,x,y,1,1,0,colori(color_index),0.75)
  if locked == true {draw_sprite(s_lock,global.coloricon,x,y)}
  if global.coloricon == 1  {draw_sprite_ext(s_colorblind,color_index,x+3,y+15,1,1,0,c_white,0.75)}
 }
 
 if bonus == true {draw_sprite(s_bonuspoints,0,x,y)} 
}
else
draw_sprite_ext(s_pause,8,x,y,1,1,0,c_white,0.075)

//If the location of some function seems odd to you, it most likely has to do with the draw order

