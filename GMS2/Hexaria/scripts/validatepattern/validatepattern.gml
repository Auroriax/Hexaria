//This script checks if the pattern is correct, and if yes, sets all blocks in that pattern to delete.
//Only tested to work from o_control. No arguments.

var a, b;
a = newcheckvalid(); b = 0
if a >= 0
{score += a; matches += 1; gemsmatched += amount-1
 for(i=1;i!=string_length(moves)+1;i+=1)
 {with o_block
  {if active == true && other.i == amount 
   {alarm[0] = 1+((other.i*1.5)-1.5); 
    if !locked && !ascentabled() && !decenabled() 
    {instance_create(x,y-600,o_block)}}
    if amount == o_control.amount-1 && b == 0
    {b = instance_create(x+20,y,o_txt); (b).txt = a; (b).alarm[11] = 1+((o_control.amount*1.5)-1);
   }
  }
 }
}
else
{instance_create(mouse_x-18,mouse_y-31,o_cross)}

restore()
