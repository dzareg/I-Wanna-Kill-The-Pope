#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
fade = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
fade += 0.01
view_xview -= fade*20
view_yview -= fade*20
view_wview += fade*40
view_hview += fade*30
if fade >= 1
{
    with player instance_destroy()
    room_goto(rBoss2C)
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(c_black)
draw_set_alpha(fade)
draw_rectangle(view_xview-32,view_yview-32,view_xview+view_wview+32,view_yview+view_hview+32,false)
draw_set_alpha(1)
draw_set_color(c_white)
