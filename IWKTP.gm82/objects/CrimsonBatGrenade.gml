#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/5
image_xscale = 1.5
image_yscale = 1.5
gravity = 0.05
vspeed = 4
#define Collision_GeezerBlock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x-16,block.y,WillyFire)
sound_play(sndWillyFireball)
instance_destroy()
