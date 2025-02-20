#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
image_angle = 270
vspeed = -6
image_speed = 1/5
hp = 10
starthp = hp
mode = -1
bossHpBar(DBCandle)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if mode == -1
{
    vspeed += 0.1
    if vspeed == 0
    {
        bossName("Sukapon", "Dark Blue",DBCandle)
        instance_create(x,y,DBCandleJoy)
        mode = 0
    }
}

if mode == 0
{
    vspeed -= 0.05
    if y < -128
    {
        x = room_width + 64
        y = player.y
        image_angle = 0
        hspeed = -12
        vspeed = 0
        sound_play(sndCherry)
        mode = 1
    }
}

if mode == 1 && instance_exists(player)
{
    if x < -128 || x > room_width + 128
    {
        image_xscale *= -1
        hspeed *= -1
        y = player.y;
        sound_play(sndCherry)
    }
}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if hp <= 0
{
    repeat 2 instance_create(x,y,bloodEmitter)
    sound_play(sndDeath)
    scrScreenShake(2,10)
    instance_destroy()
    with CTBCrazySpike alarm[1] = 25
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(player) instance_destroy()
