if status == true
{
draw_set_font(f_droidmono36)
draw_set_alpha(alph)
draw_set_halign(fa_center)

draw_text(x,y,string_hash_to_newline(txt))

draw_set_alpha(1)
draw_set_font(f_droidmono20)
draw_set_halign(fa_left)
}

