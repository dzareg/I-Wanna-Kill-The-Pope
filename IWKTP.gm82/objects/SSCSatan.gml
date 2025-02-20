#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/5
alarm[0] = 1
alarm[1] = 1
mode = 0
firemode = -1
idle = true
with world
{
    musicfadeout = true
    ss_LoopSound(musSatan)
    ss_SetSoundVol(musSatan,vol)
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///aimed attack
if firemode == 1 && idle == false
{
    sprite_index = sprSSCSatanAttack
    a = instance_create(x,y,SSCSatanFireball)
    a.direction = point_direction(x,y,player.x,player.y)
    a.speed = 4
    sound_play(sndSatanFireball)
}
alarm[0] = 3
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///circle attack
if firemode == -1 && idle == false
{
    sprite_index = sprSSCSatanAttack
    a = splitobject(20,5,SSCSatanFireball,1,0,x,y)
    sound_play(sndSatanFireball)
}
alarm[1] = 10
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///HOLD FIRE
idle = true
alarm[3] = 30
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///FIRE!!!
firemode *= -1
idle = false
alarm[2] = 30
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 0
{
    vspeed = 8
    if y > 336
    {
        vspeed = 0
        alarm[2] = 60
        mode = 1
        idle = false
        bossName("Satan","TQFP",0)
    }
}
if idle sprite_index = sprSSCSatanFlight
if !instance_exists(player) with world ss_StopSound(musSatan)
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with world
{
    ss_StopSound(musSatan)
    ss_SetSoundVol(curMusic,8000+global.options[0]*20)
}
