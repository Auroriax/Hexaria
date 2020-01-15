if !instance_exists(o_highscore) && o_pause.paused == false
{
 if ascentabled() 
  {with o_block {y -= 2}; with o_floor {y -= 2}; score += 1}
 if decenabled()
  {if o_control.alarm[8] >= 7 {o_control.alarm[8] -= 6} else {o_control.alarm[8] = 1}; score += 1}
}

