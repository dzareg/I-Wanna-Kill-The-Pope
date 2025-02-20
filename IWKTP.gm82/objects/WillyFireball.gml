#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed = 2
image_xscale = 2
image_yscale = 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed += 0.1
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for (i=0; i<5; i+=1)
{
    instance_create((x-128)+(64*i),room_height-32,WillyFire)
}
instance_destroy()
