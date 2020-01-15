if (room = rm_main)
    {
    if o_mainmenu.drawcolor == color
    {
        changemenugem(global.defcolor,global.defname,global.defdesc,false)
        window_set_cursor(cr_default)
    }
}
else
{
    window_set_cursor(cr_default)
}

