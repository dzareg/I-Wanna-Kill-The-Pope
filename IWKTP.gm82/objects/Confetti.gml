#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 0.5
image_yscale = 0.5
hspeed = random_range(-5,5)
vspeed = random_range(-10,-16)
image_angle = random(360)
image_blend = choose(c_lime,c_red,c_yellow,c_blue,c_purple,c_aqua)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed += 1
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
