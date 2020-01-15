if global.coloricon && alph >= 0.50
{
    alph -= 0.05
    if alph < 0.5 {alph = 0.5}
}
if global.coloricon == false && alph <= 1
{
    alph += 0.05
    if alph > 1 {alph = 1}
}

if mouse_check_button(mb_right)
{
angle -= 0.05 //Deafults standard movement
var a,b,c;
a=point_direction(x,y,xprev,yprev) //Which direction the mouse moved
b=point_direction(x,y,mouse_x,mouse_y) //Where the mouse is as opposed to the stars
c=a-b
angle-= 1*(c)


}
xprev = mouse_x
yprev = mouse_y



