#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player) direction = point_direction(x,y,player.x,player.y)
image_xscale = 0.5
image_yscale = 0.5
image_alpha = 0
image_speed = 0.25
alarm[0] = 5
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha < 1
{
    image_alpha += 0.1
    alarm[0] = 1
    break
}
else
{
    alarm[0] = 0
    alarm[1] = 60
    break
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
speed += 0.1
alarm[1] = 1
#define Collision_GeezerBlock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scrVisualEffect(x,y+speed,sprBG2Explosion,2,1,1,-1,c_white)
scrScreenShake(0.5,5)
sound_play(sndBG2RotFireball)
instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_blend_mode(bm_add)
draw_self()
draw_set_blend_mode(bm_normal)
