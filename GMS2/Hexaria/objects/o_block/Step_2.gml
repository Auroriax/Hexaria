//If a block floats lonely in the sky, destroy it (ascent mode)
if ascentabled() && o_control.moved == 0 && alarm[0] == -1 && position_empty(x+19,y+62+27) && position_empty(x+19-26,y+62+27) && position_empty(x+19+26,y+62+27)
{alarm[0] = 10}

//if position_empty(x+19-42,y+27) && position_empty(x+19+42,y+27)

