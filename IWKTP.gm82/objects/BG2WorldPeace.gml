#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
counter = 0
mode = 1
hp = 10
starthp = hp
attackmode = 1
triggered = false
tag = 11
image_speed = 1/5
alarm[0] = 50
alarm[2] = 50
bossName("Ecaep Dlrow", "Best Guy 2", 0)
bossHpBar(BG2WorldPeace)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprBG2WorldPeacePose
instance_create(x,y,BG2Magic)
alarm[1] = 50
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !triggered
{
    repeat 5 instance_create(random_range(64,736), 200, BG2BlackMissile)
    sound_play(sndBG2BlackMissile)
}
alarm[1] = 70
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered
{
    sprite_index = sprBG2WorldPeaceAttack
    instance_create(x,y,BG2BlackMissile)
    sound_play(sndBG2BlackMissile)
}
alarm[2] = 50
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
counter += 0.01
if counter >= 0.5 {mode *= -1; counter = 0}
vspeed = counter * mode
IFrameControl()
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if iframes == 0 {iframes = 10; sound_play(sndBossHit); hp -= other.dmg}
with other instance_destroy()
if hp <= 0
{
    LightEffect(c_white,0.2)
    a.fadespeed = 0.2
    background_visible[6] = false
    background_visible[7] = false
    instance_destroy()
    with world ss_StopSound(musWorldPeace)
    sound_play(sndDeath)
    repeat 2 instance_create(x,y,bloodEmitter)
}
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with world
{
    ss_StopSound(musWorldPeace)
    ss_SetSoundVol(curMusic,8000+global.options[0]*20)
}
