#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
image_xscale = 0
image_yscale = 0
image_angle = -500
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a = instance_create(x,y,Explosion)
a.image_xscale = 1.5
a.image_yscale = 1.5
a.image_speed = 2
instance_destroy()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha < 1
{
    image_angle += 10
    image_alpha += 0.02
    image_xscale += 0.02
    image_yscale += 0.02
}
