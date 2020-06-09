var amount, tempString, colors; colors = 1
//Should check if a move is valid, and if yes, check how many points you get for it. It's an integer.
//If the move is invalid, a number lower than 0 is returned.
//This script is possible more complicated than neccecary, so please bear with me.

//Check if the move does not only contain tiles from the same color

var movesToTest = argument[0];

for (i=0;i!=5;i+=1)
{
	if string_count(string(i),movesToTest) >= 1 {
		colors += 1
	} 
}

if colors <= 2 {return(-1)}

//Check the validity of all possible patterns
for(i=2; i <= ceil(string_length(movesToTest) * 0.5 + 1); i+=1)
{
	temp[i] = string_copy(movesToTest,1,i)
	tempString = movesToTest;
	amount = 0;
	
	repeat(100) {
		if string_pos(temp[i],tempString) != 0
		{
			amount += 1; tempString = string_replace(tempString,temp[i],"X")
		}
		else
		{
			if amount >= 2 && string_length(movesToTest) == (amount*string_length(temp[i]))
			{
				return(string_count(temp[i],movesToTest)*(string_length(temp[i])*2)*colors*5)
			}
		}
	}
}
return (-4)
