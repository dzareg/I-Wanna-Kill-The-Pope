#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 0
textscale = 0
xx = 25
alarm[0] = 150
if instance_exists(BG2Gustav) alarm[0] = 100
image_xscale = -1
image_alpha = 0
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
if mode == 0
{
    if image_alpha < 1 image_alpha += 0.05
    if textscale < 1 textscale += 0.05
}
if mode == 1 || !instance_exists(object)
{
    if image_alpha > 0 image_alpha -= 0.05 else instance_destroy()
    if textscale > 0 textscale -= 0.05
}
if instance_exists(TTT1GT) exit
if x < view_xview+(view_wview/2) image_xscale = 1 else image_xscale = -1
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if object != 0 && instance_exists(object)
{
    x = object.x
    y = object.y
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if game == "" image_blend = c_red
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,1,0,image_blend,image_alpha)
a = string_length(name)
b = string_length(game)
if a > b c = a else c = b

draw_sprite_ext(sprBossNameLine,-1,x+23*image_xscale,y+21,c*image_xscale,1,0,image_blend,image_alpha)
draw_sprite_ext(sprBossNameEnd,-1,x+23*image_xscale+(12*c*image_xscale),y+21,image_xscale,1,0,image_blend,image_alpha)

draw_set_font(rog)
if image_xscale == 1 draw_set_halign(fa_left)
else draw_set_halign(fa_right)

draw_set_valign(fa_bottom)
drawTextOutlined(x+(xx*image_xscale),y+19,name,image_blend,c_black,1,8,1,textscale)
draw_set_valign(fa_top)
drawTextOutlined(x+(xx*image_xscale),y+25,game,image_blend,c_black,1,8,1,textscale)
//24, 19
