#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
fadealpha = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
fadealpha += 1.5
if fadealpha >= 100
{
    with world ss_StopSound(curMusic)
    with player instance_destroy()
    room_goto(rBoss2B)
}
if view_wview > 32
{
    view_xview += 16/4
    view_yview += 6/4
    view_wview -= 32/4
    view_hview -= 24/4
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(c_black)
draw_set_alpha(fadealpha/100)
draw_rectangle(view_xview-32,view_yview-32,view_xview+view_wview+32,view_yview+view_hview+32,false)
draw_set_alpha(1)
draw_set_color(c_white)
