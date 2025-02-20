#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity = 0.4
vspeed = -4
hspeed = choose(-1,1)
image_speed = 1/2
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,other.y-16,RainbowShell)
instance_destroy()
