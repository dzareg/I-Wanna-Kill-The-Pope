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
mode = 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with player djump = 1
if mode == 0 && textscale < 1 textscale += 0.1
if mode == 1 && textscale > 0 textscale -= 0.1
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(rog)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
drawTextOutlined(player.x,player.y-32,"You can jump infinitely",c_white,c_black,2,8,1,textscale)
