#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/8
vspeed = 16
attack = 0
shadowalpha = 0
laser = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
bossName("Gustav", "Best Guy 2", BG2Gustav)
y -= 96
sprite_index = sprBG2GustavIdle
sound_play(sndBG2GustavSpawn)
image_speed = 1/5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y+vspeed,GeezerBlock2) && vspeed > 0
{
    sprite_index = sprBG2GustavLand
    sound_play(sndBG2Explosion)
    scrVisualEffect(x,y,sprBG2GustavEffect,1/2,1,1,-10,c_white)
    y = room_height-32
    vspeed = 0
}
if sprite_index == sprBG2GustavIdle && shadowalpha < 1 shadowalpha += 0.005
if kill image_alpha -= 0.1
if image_alpha < 0 instance_destroy()
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index == sprBG2GustavLand
{
    image_speed = 0
    alarm[0] = 30
}
if sprite_index == sprBG2GustavAttack1
    image_speed = 0
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
kill = true
instance_create(x,y-45,BG2RakhrisEffect)
sound_play(sndBG2GustavWin)
with BG2GustavLaserPattern instance_destroy()
#define Other_11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index == sprBG2GustavIdle y += 96
instance_create(x,y,BG2GustavLaserPattern)
instance_create(x-40,y-90,PowerEffect)
sprite_index = sprBG2GustavHand
image_speed = 0.2
image_index = 0
laser = true
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_blend_mode(bm_add)
var a;
if sprite_index == sprBG2GustavIdle a = y-32;
else a = y;
draw_sprite_ext(sprite_index,-1,x+15,a,image_xscale*1.25,image_yscale*1.25,image_angle,image_blend,shadowalpha)
draw_set_blend_mode(bm_normal)
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
