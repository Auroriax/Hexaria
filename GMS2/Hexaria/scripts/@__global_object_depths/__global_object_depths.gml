// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // o_menuparent
global.__objectDepths[1] = 0; // o_normal
global.__objectDepths[2] = 0; // o_hard
global.__objectDepths[3] = 0; // o_expert
global.__objectDepths[4] = 0; // o_zen
global.__objectDepths[5] = 0; // o_arise
global.__objectDepths[6] = 0; // o_tunnelbtn
global.__objectDepths[7] = 0; // o_downpour
global.__objectDepths[8] = 0; // o_cookie
global.__objectDepths[9] = -100; // o_backbutton
global.__objectDepths[10] = -100; // o_website
global.__objectDepths[11] = -100; // o_twitter
global.__objectDepths[12] = -10; // o_optionparent
global.__objectDepths[13] = -10; // o_music
global.__objectDepths[14] = -10; // o_sfx
global.__objectDepths[15] = -10; // o_colorb
global.__objectDepths[16] = -10; // o_help
global.__objectDepths[17] = -10; // o_gamejolt
global.__objectDepths[18] = 0; // o_hexgrow
global.__objectDepths[19] = 0; // o_hexshrink
global.__objectDepths[20] = -5; // o_txt
global.__objectDepths[21] = -5; // o_txtnogameplay
global.__objectDepths[22] = 1000; // o_stars
global.__objectDepths[23] = 0; // o_highscore
global.__objectDepths[24] = -100; // o_restart
global.__objectDepths[25] = -100; // o_tweetscore
global.__objectDepths[26] = 0; // o_init
global.__objectDepths[27] = 0; // o_block
global.__objectDepths[28] = 1; // o_control
global.__objectDepths[29] = 0; // o_floor
global.__objectDepths[30] = 0; // o_pause
global.__objectDepths[31] = 0; // o_mainmenu
global.__objectDepths[32] = 0; // o_credits
global.__objectDepths[33] = -10; // o_tunnel
global.__objectDepths[34] = -100; // o_cross
global.__objectDepths[35] = 0; // o_raisestack
global.__objectDepths[36] = -1; // o_tutorial
global.__objectDepths[37] = 0; // o_coolmathsplash
global.__objectDepths[38] = 0; // o_coolMath


global.__objectNames[0] = "o_menuparent";
global.__objectNames[1] = "o_normal";
global.__objectNames[2] = "o_hard";
global.__objectNames[3] = "o_expert";
global.__objectNames[4] = "o_zen";
global.__objectNames[5] = "o_arise";
global.__objectNames[6] = "o_tunnelbtn";
global.__objectNames[7] = "o_downpour";
global.__objectNames[8] = "o_cookie";
global.__objectNames[9] = "o_backbutton";
global.__objectNames[10] = "o_website";
global.__objectNames[11] = "o_twitter";
global.__objectNames[12] = "o_optionparent";
global.__objectNames[13] = "o_music";
global.__objectNames[14] = "o_sfx";
global.__objectNames[15] = "o_colorb";
global.__objectNames[16] = "o_help";
global.__objectNames[17] = "o_gamejolt";
global.__objectNames[18] = "o_hexgrow";
global.__objectNames[19] = "o_hexshrink";
global.__objectNames[20] = "o_txt";
global.__objectNames[21] = "o_txtnogameplay";
global.__objectNames[22] = "o_stars";
global.__objectNames[23] = "o_highscore";
global.__objectNames[24] = "o_restart";
global.__objectNames[25] = "o_tweetscore";
global.__objectNames[26] = "o_init";
global.__objectNames[27] = "o_block";
global.__objectNames[28] = "o_control";
global.__objectNames[29] = "o_floor";
global.__objectNames[30] = "o_pause";
global.__objectNames[31] = "o_mainmenu";
global.__objectNames[32] = "o_credits";
global.__objectNames[33] = "o_tunnel";
global.__objectNames[34] = "o_cross";
global.__objectNames[35] = "o_raisestack";
global.__objectNames[36] = "o_tutorial";
global.__objectNames[37] = "o_coolmathsplash";
global.__objectNames[38] = "o_coolMath";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for