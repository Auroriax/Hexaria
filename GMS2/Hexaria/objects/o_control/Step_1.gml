bg = layer_get_id("Background")

if o_pause.paused == true
{
    if alarm[0] >= 1 {alarm[0] += 1}
    if alarm[8] >= 1 {alarm[8] += 1}
    if alarm[9] >= 1 {alarm[9] += 1}
	layer_x(bg,layer_get_x(bg) - layer_get_hspeed(bg))
}
else
{
    if global.bgwrap
    {
		if (layer_get_x(bg) <= -1280+room_width)
		{
			layer_hspeed(bg, 0.1)
		}
        else if layer_get_x(bg) >= 0 {
			layer_x(bg,0)
			layer_hspeed(bg,-0.1)
		}
    }
}

o_control.moved = 0

