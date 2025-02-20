#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = random_range(3,4)
image_yscale = image_xscale
image_index = irandom(2)
image_speed = 0
image_alpha = 0.5
vspeed = random_range(1,2.5)
hspeed = random_range(-1,1)
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if y > room_height instance_destroy()
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(FTGSnowfall) instance_destroy()
