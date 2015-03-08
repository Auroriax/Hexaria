//This script is very messy, but basically it shortens very long numbers
//So 1024 becomes 1K, and 12345678 becomes 12M.

if real(argument[0]) >= 10000000000000000 // Sixteen! zeroes
return(string_copy(string(argument[0]),0,string_length(string(argument[0]))-15)+"e15")
if real(argument[0]) >= 10000000000000 // Thirteen zeroes
return(string_copy(string(argument[0]),0,string_length(string(argument[0]))-12)+"e12")
if real(argument[0]) >= 10000000000 // Ten zeroes
return(string_copy(string(argument[0]),0,string_length(string(argument[0]))- 9)+"e9")
if real(argument[0]) >= 10000000 // Seven zeroes
return(string_copy(string(argument[0]),0,string_length(string(argument[0]))- 6)+"M")
if real(argument[0]) >= 10000 //Four zeroes instead of three
return(string_copy(string(argument[0]),0,string_length(string(argument[0]))- 3)+"K")

return(argument[0])
