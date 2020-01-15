//Toggles fullscreen. Always place in [Keyboard press F4] events.
//Will also exit the game if alt+F4 is pressed, because Game Maker does not do this by itself.

if !keyboard_check(vk_alt)
{
 if window_get_fullscreen()
 {window_set_fullscreen(false);}
 else
 {window_set_fullscreen(true);}
}
else
game_end()
