image_speed = 0
alph = 0

if instance_number(o_tunnel) == 2
{
with o_tunnel {if alph != 0 {instance_destroy()}}
}

o_control.movesleft -= 1

if o_control.movesleft == 3 || o_control.movesleft == 7 || o_control.movesleft == 11 || o_control.movesleft == 15 || o_control.movesleft == 19
{alarm[0] = 1} //This makes sure that all blocks that are planned for removal are marked as such when adding a bonus gem

