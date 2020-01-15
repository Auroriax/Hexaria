if paused == false && distance >= 1
    {
    distance -= 8;
    if distance < 0 {distance = 0};
    }
else
{
    if paused == true && distance <= 46
    {
        distance += 4
        if distance > 46 {distance = 46}
    }
}

//Checks all keys that should pause the game

if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("P")) || mouse_check_button_released(mb_middle)) && !instance_exists(o_highscore)
{pausetoggle()}

