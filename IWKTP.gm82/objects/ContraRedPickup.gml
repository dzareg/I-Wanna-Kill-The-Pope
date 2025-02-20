#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity = 0.4
hspeed = random_range(2,4)
vspeed = 3
image_xscale = 2
image_yscale = 2
pickedup = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_bounce_solid(false)
if pickedup image_alpha -= 0.1
if image_alpha <= 0 instance_destroy()
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
pickedup = true
killPlayer()
