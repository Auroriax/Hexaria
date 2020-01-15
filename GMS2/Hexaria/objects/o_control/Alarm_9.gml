//Automatically raises the stack in Arise mode
with o_block {y -= 1}; with o_floor {y -= 1}
raisespeed = power(raisespeed,0.99975);

if raisespeed < 1
raisespeed = 1

alarm[9] = raisespeed

