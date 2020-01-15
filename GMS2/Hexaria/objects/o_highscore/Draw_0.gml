var __b__;
__b__ = action_if_variable(phase, 2, 0);
if !__b__
{
keyboard_string = (string_copy(string_lettersdigits(keyboard_string),0,50)) //Both lettersdigits and 50 chars max

if alph < 1 {alph += 0.01}
draw_set_alpha(alph)

if phase = 0
{
draw_set_halign(fa_center); draw_set_font(f_droidmono20); draw_set_valign(fa_middle);
draw_text_ext(room_width/2,room_height/2,string_hash_to_newline(text[26]+"#"+text[27]+"#"+text[28]+"##"+keyboard_string+flashy+"##"+text[29]),30,room_width)
draw_set_font(f_small); draw_set_valign(fa_top);
}
if phase = 1
{
//draw_highscore(200,100,600,500)
draw_set_halign(fa_center)
draw_text(room_width/2,100,string_hash_to_newline(leaderboards))

draw_text(215,90-18,string_hash_to_newline("\\#"))
draw_text(419-35,90-18,string_hash_to_newline(text[42]))
draw_text(559,90-18,string_hash_to_newline(text[43]))
draw_text(656,90-18,string_hash_to_newline(text[44]))
draw_line(200,89,room_width-200,89)

for (i=1;i<=25;i+=1)
{
draw_sprite(s_leaderboardhex,img_index[i],419-50-ceil(string_width(string_hash_to_newline(displayname[i]))/2),73+(i*18))
draw_text(215,72+(i*18),string_hash_to_newline(string(i)))
draw_text(419-35,72+(i*18),string_hash_to_newline(displayname[i]))
draw_text(559,72+(i*18),string_hash_to_newline(score_sort[i]))
draw_text(656,72+(i*18),string_hash_to_newline(stored[i]))
draw_set_alpha(0.4*alph); 
draw_line(200,71+(i*18),room_width-200,71+(i*18));
if img_index[i] != 5 //This value is five when this player is a guest
{if displayname[i] == gj_user_username() && (string_count("just now",stored[i]) || string_count("seconds",stored[i]))
{draw_rectangle(0,71+(i*18),room_width,89+(i*18),false)}}
else
{if displayname[i] == global.guestname && (string_count("just now",stored[i]) || string_count("seconds",stored[i]))
{draw_rectangle(0,71+(i*18),room_width,89+(i*18),false)}}
draw_set_alpha(alph)
}

draw_text(room_width/2,10,string_hash_to_newline(text[35]+"#"+text[33]))
draw_text(room_width/2,542,string_hash_to_newline(text[56]+"#"+totalplay+" "+text[57]+" - "+totalscore+" "+text[58]+"#"+totalmatches+" "+text[59]+" - "+totalgems+" "+text[60]))
}

draw_set_alpha(1)

}
else
{
//If GameJolt is initialised with an empty private key, just show a generic screen.
if alph < 1 {alph += 0.01}
draw_set_alpha(alph)

draw_set_halign(fa_center); draw_set_valign(fa_middle); draw_set_alpha(alph);
draw_text(room_width/2,room_height/2,string_hash_to_newline(text[26]+"#"+string(score)+" "+text[58]+"#"+string(o_control.matches)+" "+text[59]+"#"+string(o_control.gemsmatched)+" "+text[60]+"##"+text[35]))
draw_set_halign(fa_left); draw_set_valign(fa_top); draw_set_alpha(1);

}
