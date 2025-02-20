#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a = 0
image_alpha = 1.6
image_xscale = 2
image_yscale = 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha < 0 instance_destroy()
image_alpha -= 0.05
image_angle += 5
a += 26
with instance_create(x,y,TTTInflukaMagic)
{
    direction = other.a
    speed = 5
}
