#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle = direction
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with instance_create(x,y,TTTMissingnoIceDeath) image_angle = other.direction
sound_play(sndTTTMissingnoIceDeath)
instance_destroy()
