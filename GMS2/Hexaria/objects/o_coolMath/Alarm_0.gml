if coolMathShouldUnlockAll() && !unlockedall
{
    show_debug_message("Unlocking all levels...")
    highscore_add("Unlocked all levels",1000)
    
    if room == rm_main {room_restart()}
}
else
{
    alarm[0] = 6
}

