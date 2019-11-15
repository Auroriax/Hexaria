y -= 0.15
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_text_ext(50,y,string_hash_to_newline(@"CREDITS
Hexaria, a game by Tom Hermans, Version "+string(cn_version)+@"

Backgrounds:
Main menu - Whirling Southern Star Trails over ALMA - This photograph was produced by European Southern Observatory (ESO). Their website states: "+"\""+@"All ESO still and motion pictures, with the exception of the ESO Logo, are released under the Creative Commons Attribution 4.0 International License, unless the credit byline indicates otherwise."+"\""+@"
Normal: space by Sweetie187 - Licenced under Creative Commons Attribution 2.0 Generic
Hard: Star Stock 5 by PatchesMedbay - Free to use if credited
Expert: Mosaic of Carina Nebula Region - Credit: NASA and The Hubble Heritage Team (STScI/AURA)
Zen: Clouds over the Atlantic Ocean - This file is licensed under the Creative Commons Attribution-Share Alike 3.0 Unported license
Arise: A sea of clouds from Kitadake-sansou - Licenced under the CC Attribution-Share Alike 3.0 Unported
Tunnel: Galaxies in Hiding (Unannotated) - This file is in the public domain because it was solely created by NASA. NASA copyright policy states that "+"\""+@"NASA material is not protected by copyright unless noted"+"\""+@".
Downpour: NGC 6791: Full Hubble ACS Field - Free to use in the Public Domain if credited - Credit: NASA, ESA, and L. Bedin (STScI)

Fonts:
Mysterions - Created by Brian Kent
Zero Threes - Created by Ray Larabie
Droid Sans Mono - Copyright 2010 DroidFonts.com, licensed under the Apache License, Version 2.0

Music:
"+"\""+@"The Waning Moon"+"\""+@", "+"\""+@"Soaring Together"+"\""+@", "+"\""+@"The Beating Sun"+"\""+@" and "+"\""+@"Spirit of the Valley (Feat M-PeX)"+"\""+@" from the Dreamheart EP by Anima are licensed under a Attribution 3.0 Unported (CC BY 3.0) licence.

Thanks for playing! (and for watching this far into the credits, obviously)

Sprites, scripts, object code and rooms: Copyright 2016-2019 Tom Hermans
"),16,room_width - 100)
draw_sprite(s_sketch1,0,0,y+1160)
draw_sprite(s_sketch2,0,249,y+1160)

draw_sprite(s_normal,4,25,round(y)+1510-70)
draw_sprite(s_expert,2,25+50,round(y)+1510-70)
draw_sprite(s_zen,2,25+50+50,round(y+1510-70))
draw_sprite(s_tunnel,2,25+50+50+50,round(y+1510-70))

draw_sprite(s_arise,5,25,round(y)+1510)
draw_sprite(s_cookie,2,25+50,round(y)+1510)
draw_sprite(s_pause,9,25+50+50,round(y+1510))
draw_sprite(s_downpour,6,25+50+50+50,round(y+1510))

draw_set_halign(fa_left)

if y <= -1600
{y = ystart}

