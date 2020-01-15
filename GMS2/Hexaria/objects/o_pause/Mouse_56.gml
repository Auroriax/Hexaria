//Handles the actions when the retry or quit button is pressed

if paused == true && mouse_check_button_released(mb_left) && distance >= 46
{
 if mouseover(x-52,x-6,y,y+61) && alarm [11] == -1
 {
  if zenabled() 
  {
   o_control.colors += 1; if o_control.colors == 6 {o_control.colors = 3}
   with (o_block) {color_index = irandom_range(0,o_control.colors-1); if y >= -5 {y -= 470+x}}; 
   if paused == true {pausetoggle()}; exit
  } 
   if COOLMATH
   {
    //coolmathCallLevelRestart(room);
   }
  exitlevel(); instance_create(x+31-12-48,y+31,o_hexgrow); alarm[11] = 1; 
 }
 
 if mouseover(x+44,x+92,y,y+61) && alarm [10] == -1
 {
  exitlevel(); instance_create(x+31-12+48,y+31,o_hexgrow); alarm[10] = 1; 
 }
}


