#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
textscale = 0
alarm[0] = 100
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 0 && textscale < 1 textscale += 0.1
if mode == 2
{
    textscale -= 0.1
    if textscale < 0 instance_destroy()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(rog)
draw_set_halign(fa_center)
if x < view_xview + 100 {draw_set_halign(fa_left)}
if x > view_xview + 700 {draw_set_halign(fa_right)}
draw_set_valign(fa_middle)
drawTextOutlined(x,y,savetext,c_white,c_black,2,8,1,textscale)
