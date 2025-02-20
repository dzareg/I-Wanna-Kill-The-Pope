#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.options == 0 room_goto_next()
alarm[0] = 50
image_alpha = 0
mode = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 0 sound_play(sndShoot)
with instance_create(room_width+32,room_height/2,LovetrapBigKidWaterBullet) hspeed = -2
alarm[0] = 50
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 0 && image_alpha < 1 image_alpha += 0.02
if mode == 1
{
    image_alpha -= 0.02
    if image_alpha < 0 room_goto_next()
}
with LovetrapBigKidWaterBullet
    image_alpha = other.image_alpha
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_alpha(image_alpha)
draw_set_font(rogsmall)
draw_set_halign(fa_center)
drawTextOutlined(room_width/2,128,"This game contains references to real life people and events.",c_red,c_black,1,8,1,1)
drawTextOutlined(room_width/2,160,"Despite this, it has no intention of making fun of or mocking anyone mentioned.",c_red,c_black,1,8,1,1)
draw_set_font(rogbigger)
drawTextOutlined(room_width/2,224,"While you're here, have a sound test too.",c_white,c_black,1,8,1,1)
drawTextOutlined(room_width/2,room_height-128,"Press Shift to continue.",c_white,c_black,1,8,1,1)
draw_set_alpha(1)
#define KeyPress_16
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 0
{
    mode = 1
    sound_play(sndDobraJedziemy)
    sound_stop(sndShoot)
}
