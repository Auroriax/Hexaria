if (mouseover(x-52,x-6,y,y+61) && paused == true) || (mouseover(x+44,x+92,y,y+61) && paused == true) || mouseover(x-3,x+41,y,y+61)
{window_set_cursor(cr_handpoint); mouseleft = false}
else
{ if mouseleft = false {window_set_cursor(cr_default)}; mouseleft = true}

