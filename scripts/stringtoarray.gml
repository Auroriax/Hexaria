var translation, b;
globalvar text;

translation = translations(argument[0]) //Grabs a translation from the script

for(i=0;i!=65;i+=1) //65 is amount of table rows in the translation
{b = string_pos(chr(13),translation);
 if b = 0 {return("0")}
 global.text[i+2] = string_copy(translation,1,b-1); 
 translation = string_delete(translation,1,b+1);
}
