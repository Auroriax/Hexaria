y -= 0.15
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_text_ext(50,y,string_hash_to_newline(@"CREDITS
Hexaria, a game by Tom Hermans, Version "+string(cn_version)+@"

Backgrounds:
Main menu - Whirling Southern Star Trails over ALMA - http://commons.wikimedia.org/wiki/File:Whirling_Southern_Star_Trails_over_ALMA.jpg - This photograph was produced by European Southern Observatory (ESO). Their website states: 'All ESO still and motion pictures, with the exception of the ESO Logo, are released under the Creative Commons Attribution 4.0 International License, unless the credit byline indicates otherwise.' http://creativecommons.org/licenses/by/4.0/deed.en
Normal: space by Sweetie187 - https://www.flickr.com/photos/58782395@N03/5518988345/in/photostream/ -  Licenced under Creative Commons Attribution 2.0 Generic: https://creativecommons.org/licenses/by/2.0/
Hard: Star Stock 5 by PatchesMedbay - http://patchesmedbay.deviantart.com/art/Star-stock-5-341584479 - Free to use if credited
Expert: Mosaic of Carina Nebula Region - http://hubblesite.org/newscenter/archive/releases/2003/31/image/b/ - Credit: NASA and The Hubble Heritage Team (STScI/AURA)
Zen: Clouds over the Atlantic Ocean - http://commons.wikimedia.org/wiki/File:Clouds_over_the_Atlantic_Ocean.jpg - This file is licensed under the Creative Commons Attribution-Share Alike 3.0 Unported license. http://creativecommons.org/licenses/by-sa/3.0/deed.en
Arise: A sea of clouds from Kitadake-sansou - http://commons.wikimedia.org/wiki/File:A_sea_of_clouds_from_Kitadake-sansou_01.jpg - Licenced under the CC Attribution-Share Alike 3.0 Unported. http://creativecommons.org/licenses/by-sa/3.0/deed.en
Tunnel: Galaxies in Hiding (Unannotated) - http://commons.wikimedia.org/wiki/File:Galaxies_in_Hiding_(Unannotated).jpg - This file is in the public domain because it was solely created by NASA. NASA copyright policy states that 'NASA material is not protected by copyright unless noted'.
Downpour: NGC 6791: Full Hubble ACS Field - http://hubblesite.org/gallery/album/star/pr2008025c/hires/true/ - Free to use in the Public Domain if credited - Credit: NASA, ESA, and L. Bedin (STScI)

Fonts:
Mysterions - Freeware - Created by Brian Kent

Zero Threes - Free to use for freeware - Created by Ray Larabie

Droid Sans Mono - Copyright 2010 DroidFonts.com
Licensed under the Apache License, Version 2.0 (the 'License'); you may not use this file except in compliance with the License. You may obtain a copy of the License at
http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and limitations under the License.

Music:
"+"\""+@"The Waning Moon"+"\""+@", "+"\""+@"Soaring Together"+"\""+@", "+"\""+@"The Beating Sun"+"\""+@" and "+"\""+@"Spirit of the Valley (Feat M-PeX)"+"\""+@" from the Dreamheart EP by Anima are licensed under a Attribution 3.0 Unported (CC BY 3.0) licence. See http://creativecommons.org/licenses/by/3.0/

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

