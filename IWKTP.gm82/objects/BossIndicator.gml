#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
alarm[0] = 10
die = false
scale = 1
a = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndMenuSwitch)
visible = !visible
alarm[0] = 10
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//if place_meeting(x,y,BossParent) || place_meeting(x,y,playerKiller) die = true
if image_alpha < 1 && !die image_alpha += 0.05
if die
{
    image_alpha -= 0.05
    if image_alpha <= 0 instance_destroy()
}
a += 5
image_xscale = scale+lengthdir_x(0.2/scale,a)
image_yscale = image_xscale
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
draw_sprite_ext(sprite_index,1,x,y,scale,scale,0,c_white,image_alpha)
