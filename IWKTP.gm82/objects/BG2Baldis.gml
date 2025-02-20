#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/10
vspeed = 4
mode = 0
alarm[0] = 2
alarm[1] = 150
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scrBossShadow(BG2Baldis, 0.1)
alarm[0] = 2
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 1
{
    for(i = 0; i < 5; i += 1)
        action_create_object_motion(BG2BaldisPreMissile,x,y,8,180 - i*45)
}
alarm[1] = 150
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    if player.x > x image_xscale = -1 else image_xscale = 1
}
if mode == 0 && y >= 316
{
    vspeed = 0
    sound_play(sndBG2BaldisSpawn)
    bossName("Baldis", "Best Guy 2", BG2Baldis)
    mode = 1
}
if mode == 1 && !instance_exists(BG2Gustav)
{
    angle += 4
    y = 316 + lengthdir_y(20, angle)
}
if instance_exists(BG2Gustav) vspeed -= 0.3
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if vspeed < 0 instance_destroy()
