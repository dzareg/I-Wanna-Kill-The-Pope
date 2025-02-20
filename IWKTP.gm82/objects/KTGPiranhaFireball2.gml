#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/5
image_blend = c_red
//sound_play(fireball_snd)
image_xscale = 2
image_yscale = 2
firsty = y
int = 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if speed < 5 speed += 0.1

sdfdsfdsf += 5
y = ystart+40*(sin(degtorad(sdfdsfdsf))*int)
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if x > room_width || x < 0 instance_destroy()
