//Connects a color to a colorindex.

//if !global.coloricon
switch argument[0]
{case 0: return(c_red)
 case 1: return(c_lime)
 case 2: return(c_blue)
 case 3: return(c_yellow)
 case 4: return(c_purple)
}
/*else
switch argument[0]
{case 0: return(make_color_rgb(000,000,000))
 case 1: return(make_color_rgb(128,128,128))
 case 2: return(make_color_rgb(255,255,255))
 case 3: return(make_color_rgb(055,055,055))
 case 4: return(make_color_rgb(200,200,200))
}
