#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
image_xscale = 3.2
image_yscale = 3.2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(TDLouise)
    if image_alpha < 0.7 image_alpha += 0.02
else
{
    image_alpha -= 0.05
    if image_alpha <= 0 instance_destroy()
}
