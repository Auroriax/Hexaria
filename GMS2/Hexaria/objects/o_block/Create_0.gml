sprite_index = s_white
color_index = 0 //Will be changed next alarm
amount = 0 //Which # is this tile in the pattern?

active = false //Is this tile in the currently selected pattern?
selected = false //Is the mouse currently on the tile?
moved = false //Has this tile moved this step? (If the tile has moved it can't be selected)

y -= 4 //Looks graphically a bit better!

alarm[11] = 1

locked = false //If a gem is locked, it has to be included twice to disappear
bonus = false //If a BONUS gem is matched, the player gains 100 bonus points

