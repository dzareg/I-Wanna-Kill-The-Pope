#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(0,0,ShakeSurface)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if shake_intensity > 0
{
    shake_intensity -= 1 / length
    view_xview = xstart + random_range(-shake_intensity, shake_intensity);
    view_yview = ystart + random_range(-shake_intensity, shake_intensity);
}
else
{
    instance_destroy()
    view_xview = 0
    view_yview = 0
}
