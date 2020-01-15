action_partsyst_create(-2);
//Options, toggles
global.coloricon = false
global.sfx = true
global.particles = true //The game looks /way/ better with them on

gpu_set_alphatestenable(true)

global.checkupdate = false //Only check once per game boot if the game needs to be updated.

//Initializes all text in the game (exept mantras) in the preferred language
global.language = os_get_language()
stringtoarray(global.language)

global.defcolor = c_white
global.defname  = "Hexaria"
global.defdesc  = ""

global.tutorial = false //If the tutorial is enabled.

global.guestname = "" //This is the name of a guest user, which is prompted at game overs

randomize();

gj_init("44053","") //Set privatekey to "" to disable GameJolt features as whole front-end
gj_user_autologin()

if !COOLMATH
{
    room_goto_next()
    audio_play_sound(mus_menu,100,true)
}
else
{
    domain = url_get_domain();
    if(domain!="https://www.coolmath-games.com"&&
    domain!="m.coolmathgames.com"&&
    domain!="dev.coolmathgames.com"&&
    domain!="edit-stage.coolmathgames.com"&&
    domain!="www.stage.coolmathgames.com"&&
    domain!="edit.coolmathgames.com"&&
    domain!="www.coolmathgames.com"&&
    domain!="https://www.coolmathgames.com"&&
    domain!="m.coolmath-games.com"&&
    domain!="dev.coolmath-games.com"&&
    domain!="edit-stage.coolmath-games.com"&&
    domain!="www.stage.coolmath-games.com"&&
    domain!="edit.coolmath-games.com"&&
    domain!="www.coolmath-games.com")
    {

    }
    else
    {
        alarm[0] = 1;
    }
}

