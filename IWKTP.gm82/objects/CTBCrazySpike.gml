#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 15
alarm[2] = 15
dir = 0
mode = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 0 && y > room_height/2
{
    repeat 12
    {
        a = instance_create(x, y, CTBLilCrazySpike)
        a.direction = 270 + random_range(-90,90)
        a.speed = random_range(3,5)
    }
}
else if mode == 1 && vspeed == 0
{
    a = instance_create(random(room_width), -64, CTBLilCrazySpike)
    a.constspeed = true
    a.direction = 270
    a.speed = random_range(5,8)
}
scrBossShadow(CTBCrazySpike,0.1)
alarm[0] = 7
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
direction = point_direction(x,y,player.x,player.y)
speed = -3
mode = 3
sound_play(sndSpikeTrap)
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    if mode == 0
    {
        if y < 576
        {
            a = instance_create(x, y, CTBLilCrazySpike)
            a.direction = point_direction(x,y,player.x,player.y)
            a.speed = 2
        }
        alarm[2] = 30
    }
    if mode == 1 alarm[2] = 50
}
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(640, room_height+128, DBCandle);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle += 16
if mode == 0
{
    vspeed -= 0.1
    if y < -128
    {
        instance_create(80,664,MagikSpiketrapG)
        instance_create(720,664,MagikSpiketrapG)
        sound_play(sndSpikeTrap)
        bossName("Crazy Spike", "CTB", CTBCrazySpike)
        scrScreenShake(10,2)
        vspeed = 2
        alarm[3] = 200
        mode = 1
    }
}
if mode == 1 && y > 128 vspeed = 0
if y > room_width + 128
{
    instance_destroy();
    with Boss1Controller event_user(0)
}
if mode == 3 speed += 0.3
