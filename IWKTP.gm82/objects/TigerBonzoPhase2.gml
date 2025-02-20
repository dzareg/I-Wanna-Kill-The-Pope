#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 50
alarm[2] = 50
alarm[3] = 1
view_xview[0] = 384
view_yview[0] = 144
view_wview[0] = 32
view_hview[0] = 32
mode = 0
spawnenemy = false
fadealpha = 0
explosiondelay = 50
bgsquaremode = -1
image_speed = 10
xx = x-112
yy = y+63
background_alpha[0] = 0.5
background_alpha[1] = 0.5
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///DEATH
with world ss_StopSound(curMusic)
sound_play(sndBonzoDeath)
alarm[4] = 1
alarm[5] = 368
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///BG Effect
bgsquaremode *= -1
with instance_create((room_width/2)+(room_width/2+64)*bgsquaremode,random_range(64,room_height-64),GeezerBGEffect)
    hspeed *= other.bgsquaremode
alarm[1] = 25
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///geezer effect
instance_create(x+random_range(-112, 112), y+175+random_range(-112, 112), GeezerEffect)
alarm[3] = 2;
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///death explosions
with instance_create(x+random_range(-sprite_width/2,sprite_width/2),y+random(sprite_height),Explosion)
{
    killplayer = false
    shakescreen = true
    image_xscale = 3
    image_yscale = 3
}
if explosiondelay > 4 explosiondelay -= 3
alarm[4] = explosiondelay
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///die
sound_play(sndBreak)
with BonzoBG instance_destroy()
instance_create(x,y,BonzoDeath)
scrScreenShake(2,20)
instance_destroy()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(player) with world ss_StopSound(curMusic)

imageindex += 0.2
if imageindex >= 8 imageindex = 0

if view_wview[0] != 800
{
    view_xview[0]-=8
    view_yview[0]-=3
    view_wview[0]+=16
    view_hview[0]+=12
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with world
{
    filePlaying = -1
    ss_StopSound(curMusic)
    musicPlay(16, musBoss2Phase2)
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite(sprite_index,-1,x,y)
//draw_set_blend_mode(bm_add)
draw_sprite_ext(sprTigerBonzo,-1,x+random_range(-3,3),y+175+random_range(-3,3),1.2,1.2,0,image_blend,1)
draw_set_blend_mode(bm_normal)
draw_sprite_ext(sprTigerColor,imageindex,xx,yy,1,1,0,c_white,0.5)
