#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room == rTitle
{
    triggered = false
    image_xscale = 100
    image_yscale = 100
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle += 0.1
if room != rTitle exit
if triggered && image_xscale > 1.5 && image_yscale > 1.5
{
    image_xscale -= 0.1
    image_yscale -= 0.1
}
visible = !instance_exists(Darkness)
//if instance_exists(Darkness) {visible = false} else {visible = true}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room == rTitle draw_sprite_ext(sprite_index,-1,view_wview/2,view_hview/2,image_xscale,image_yscale,image_angle,c_white,image_alpha)
else draw_sprite_ext(sprite_index,-1,view_xview+view_wview/2,view_yview+view_hview/2,image_xscale,image_yscale,image_angle,c_white,image_alpha)
