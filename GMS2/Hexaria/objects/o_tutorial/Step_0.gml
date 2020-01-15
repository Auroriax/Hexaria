if ind != 4 && ind != 5
{
    alph += alphinc
    if alph <= 0 || alph >= 1
    {
        alph = clamp(alph,0,1)
        alphinc = -alphinc
    }
}
else
alph = 0.99

var i;

if ind == 4 || ind == 5
{
i = instance_find(o_txt,0)

if i != noone
 {
  if ind == 4 {ind = 5; exit;}
  if real((i).txt) > 170
   {ind = 6}
 }
}

