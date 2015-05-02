a = instance_find(o_block,irandom(instance_number(o_block)))
if (a).alarm[0] == -1 && (a).bonus == false
{
(a).bonus = true
instance_create((a).x,(a).y,o_hexgrow)
}
else
addbonus()
