#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1
sound_play(sndBG2PurpleBall)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed += 0.075
alarm[0] = 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_xscale < 7 {image_xscale += 0.25}
if image_yscale < 7 {image_yscale += 0.25}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_blend_mode(bm_add)
repeat 3 {draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,16777215,image_alpha)}
draw_set_blend_mode(bm_normal)
