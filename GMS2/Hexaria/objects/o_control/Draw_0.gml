draw_set_color(c_white); draw_set_halign(fa_right)

//Draw fancy time display
draw_set_halign(fa_center)
draw_set_font(f_mysterions48)
if time >= 0 && !zenabled() && !ascentabled() && !tunnelabled()
{
var a,b;
a = floor(time/60)
b = a*60
if time-b <= 9
draw_text(90+56,506,string_hash_to_newline(string(a)+":0"+string(time-b)))
else
draw_text(90+56,506,string_hash_to_newline(string(a)+":"+string(time-b)))
}

//Draw fancy score display
draw_set_font(f_droidmono20)
var c, d;
d = ""
c = string_length(string(score))
for(i=0;i!=7-c;i+=1)
{d += "0"}
draw_text(90+56,565,string_hash_to_newline(d+string(score)))

draw_line(90+56-string_width(string_hash_to_newline(d+string(score)))/2,565,90+56+string_width(string_hash_to_newline(d+string(score)))/2,565)

draw_set_font(f_small)

//If zen mode is currently on, then we draw a mantra on-screen!
draw_set_halign(fa_center); draw_set_valign(fa_bottom)
if zenabled() && instance_number(o_tutorial) == 0
{
 if alarm[10] <= 100
 {
  draw_set_alpha(alarm[10]/100)
  draw_text_ext(90+56,565+alarm[10]-100,string_hash_to_newline(mantra),-1,120); draw_set_alpha(1)
 }
 if alarm[10] >= 1700
 {
  draw_set_alpha(1-((alarm[10]-1700)/100))
  draw_text_ext(90+56,565-(alarm[10]-1700),string_hash_to_newline(mantra),-1,120); draw_set_alpha(1)
 }
 if alarm[10] > 100 && alarm[10] < 1700
  draw_text_ext(90+56,565,string_hash_to_newline(mantra),-1,120)
 
}

draw_set_halign(fa_left); draw_set_valign(fa_top)

draw_set_font(f_mysterions48); draw_set_halign(fa_center);

if ascentabled()                  {draw_text_ext(90+56,506,string_hash_to_newline("L"+string(round(raisespeed))),-1,120)}
if tunnelabled() && movesleft > 0 {draw_text_ext(90+56,506,string_hash_to_newline(+string(movesleft)+"X"),-1,120)}

draw_set_font(f_small); draw_set_halign(fa_left);

