//Returns a mantra for the zen mode. Special thing about the script:
//it allows me to copy all text from a table straight in the game. -t
var a, b, i, mantra, mantras;
//Here are the mantras!
mantras = mantranslations(global.language)

//Here we split them all in the same array
for(i=0;i!=34;i+=1) //32 is amount of newlines in the string (I think)
{b = string_pos("
",mantras);
 if b = 0 {return("0")}
 mantra[i] = string_copy(mantras,1,b); 
 mantras = string_delete(mantras,1,b);
}

//And we pick one of them randomly from the stack!
a = irandom(33)
return(mantra[a])

