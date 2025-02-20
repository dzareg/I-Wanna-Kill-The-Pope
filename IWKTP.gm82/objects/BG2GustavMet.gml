#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 1/4
image_yscale = 1/4
a = speed
alarm[0] = 5
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
speed = speed/7.5
alarm[1] = 20
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
speed = 25
#define Collision_GeezerBlock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !sound_isplaying(sndBG2Explosion) sound_play(sndBG2Explosion)
instance_create(x-speed,y,BG2GustavMetExplosion)
scrScreenShake(1,10)
instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,16777215,image_alpha)
draw_set_blend_mode(bm_add)
repeat 7 draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,16777215,image_alpha)
draw_set_blend_mode(bm_normal)
