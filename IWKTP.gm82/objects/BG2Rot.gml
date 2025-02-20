#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndBG2RotSpawn)
mode = 0
angle = 0
alarm[0] = 30
vspeed = -16
with CherryBounce
{
    var a;
    a = instance_create(x,y,deliciousFruit)
    a.direction = direction
    a.speed = speed
    instance_destroy()
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 1 instance_create(random_range(128,room_width-128),random_range(64,256),BG2RotFireball)
alarm[0] = 75
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if y <= 200 && mode == 0
{
    vspeed = 0
    mode = 1
    bossName("Guardian General Rot", "Best Guy 2", BG2Rot)
}
if mode == 1
{
    angle += 2
    y = 200 + lengthdir_y(20, angle)
}
if mode == 2
{
    vspeed -= 0.2
    if y < -room_height instance_destroy()
}
