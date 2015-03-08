//When the mouse is held on this gem, it will get added to the pattern. That is what this script handles.
//Only to be called by o_block.

//Of course, we won't make the tile selectable when it is planned to be destroyed (alarm[0]).
//Also, if the tile is currently moving (this step), it can't be selected
//Finally, you can't select any tile when the game is paused

if alarm[0] == -1 && moved == false && o_pause.paused == false
{
 var a; //Strictly esures only one of the various sound effects is played
 pancake = false; a = false;

 //Undo all selected tiles initially selected after this tile when the mouse hovers over it again.
 if active == true && selected == false
 {
  with o_block
   {if amount >= other.amount
    {active = false;}
   }
  o_control.amount = amount
  o_control.moves = string_copy(o_control.moves,0,amount-1)
  if global.sfx == true && a == false {audio_play_sound(sou_back,0,false); a = true}
 }
 //If the tile hasn't been selected yet, we make it selected.
 with o_block
 {
  if amount == o_control.amount-1 && distance_to_object(other) <= 15
  other.pancake = true
 }

 if o_control.amount == 1
 {
 if (tunnelabled() && instance_exists(o_tunnel))
 {if distance_to_point(o_tunnel.x,o_tunnel.y) <= 40 
 {pancake = true} else 
 {pancake = false; if global.sfx {audio_play_sound(sou_warning,0,false)}; instance_create(x,y,o_cross) mouse_clear(mb_left)}}
 else
 {pancake = true}
 }

 if active == false && pancake == true
 {
 amount = o_control.amount
 o_control.amount += 1
 active = true
 o_control.moves += string(color_index)
 selected = true
 if global.sfx == true && a == false {
  switch color_index
  {case 0: audio_play_sound(sou_select56,0,false); break;
   case 1: audio_play_sound(sou_select57,0,false); break;
   case 2: audio_play_sound(sou_select58,0,false); break;
   case 3: audio_play_sound(sou_select55,0,false); break;
   case 4: audio_play_sound(sou_select59,0,false); break;}
  }
 }
 
 o_control.valid = newcheckvalid()
}
