//OBSOLETE

//Should check if a move is valid, and if yes, check how many points you get for it. It's an integer.
//If the move is invalid, a number lower than 0 is returned.

//Check if the move does not only contain tiles from the same color
if string_count('0',o_control.moves) == string_length(o_control.moves) {return(-1)}
if string_count('1',o_control.moves) == string_length(o_control.moves) {return(-2)}
if string_count('2',o_control.moves) == string_length(o_control.moves) {return(-3)}
if string_count('3',o_control.moves) == string_length(o_control.moves) {return(-5)}
if string_count('4',o_control.moves) == string_length(o_control.moves) {return(-6)}

//Check the validity of all possible patterns
for(i=2;i!=string_length(o_control.moves);i+=1)
{
 temp[i] = string_copy(o_control.moves,1,i)
 if string_count(temp[i],o_control.moves) >= 2 /*If the pattern occurs twice or more times*/ && string_length(o_control.moves) == string_count(temp[i],o_control.moves)*string_length(temp[i]) //If the length of the pattern * the amount of times the pattern reoccurs is the same as the total length of the pattern
  {return(string_count(temp[i],o_control.moves)*(string_length(temp[i])*2)); break}
}
return (-4)
