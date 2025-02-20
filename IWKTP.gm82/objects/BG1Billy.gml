#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
sound_play(sndBillySpawn)
bossName("Billy Herrington", "Best Guy 1",BG1Billy)
vspeed = 8
alarm[0] = 100
alarm[2] = 5
killplayer = false
hp = 10
starthp = hp
attack = false
xx1 = x - 30
xx2 = x + 30
yy = y + 20
angle = 0
mode = 0
firemode = 1
shield = true
spikeangle = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
attack = true
spikeangle = irandom(15)
alarm[1] = 35
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
attack = false
alarm[0] = 100
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if attack && instance_exists(player)
{
    if !shield
    {
        spikeangle += 3
        for(i = 0; i < 10; i += 1)
        {
            var a;
            a = instance_create(x,y,BG1BillySpike)
            a.direction = 36*i+spikeangle
        }
    }
    else
        with instance_create(x + 30*firemode, yy, BG1BillySpike) direction = point_direction(x,y,player.x,player.y)
    sound_play(sndShoot)
}
alarm[2] = 5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if mode == 0 && y > 196
{
    vspeed = 0
    mode = 1
}
if mode == 1
{
    angle += 2
    y = 196 + lengthdir_y(10, angle)
    if !instance_exists(BG1KimMame) && !instance_exists(BG1PDSpirit) && shield
    {
        sound_play(sndBillyAttack)
        bossHpBar(BG1Billy)
        shield = false
    }
}
if alarm[0] == 20
{
    firemode *= -1
    instance_create(x+30*firemode,yy,PowerEffect)
}
xx1 = x - 30
xx2 = x + 30
yy = y + 20
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if shield instance_create(x,y,BossShield) else BulletCollision()
if hp <= 1
{
    instance_create(x,y,BG1BillyDie)
    instance_destroy()
}
with other instance_destroy()
