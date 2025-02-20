#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/10
path_start(PathHammerGuy,random_range(3,4),true,true)
alarm[0] = 100
alarm[1] = 150
flyaway = false
image_alpha = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !flyaway
{
    image_xscale *= -1
    with instance_create(x+image_xscale*15,y-14,MarioHammer) hspeed = other.image_xscale * random_range(2,4)
}
alarm[0] = 20
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if Boss2Controller.phase == 3
{
    path_end()
    flyaway = true
    vspeed -= 0.2
}
if image_alpha < 1 image_alpha += 0.05
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprHammerGuyCloud,image_index,x,y,2,2,0,c_white,image_alpha)
draw_sprite_ext(sprHammerGuy,-1,x,y,image_xscale*2,2,0,c_white,image_alpha)
