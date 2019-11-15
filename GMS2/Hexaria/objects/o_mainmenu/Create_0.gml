image_speed = 0
o_mainmenu.drawcolor   = global.defcolor
o_mainmenu.name   = global.defname
o_mainmenu.description = global.defdesc

__background_set( e__BG.Visible, 1, true ); 
__background_set( e__BG.Alpha, 1, 0.9875 ); 
alarm[11] = 1

news = ""
version = ""
request = -1

if global.checkupdate == false && gj_privatekey != ""
request = gj_datastore_get_global("Version")

smallfont = false

image_speed = false;

