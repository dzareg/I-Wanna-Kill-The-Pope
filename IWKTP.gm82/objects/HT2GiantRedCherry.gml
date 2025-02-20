#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
alarm[0] = 5
alarm[1] = 50
image_speed = 1/5
hp = 12
starthp = hp
bossHpBar(HT2GiantRedCherry)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 1
{
    a = instance_create(x,y,deliciousFruit)
    a.direction = random_range(220,340)
    a.speed = 6
}
if instance_exists(HT2GiantBlueCherry) alarm[0] = 10 else alarm[0] = 5
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 1 {splitobject(10,7,deliciousFruit,1,0,x,y)}
alarm[1] = 75
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if mode = 0 {y += 8; if y >= 192 {mode = 1; bossName("Red Cherry", "Heaven Trap 2",0)}}
if mode == 2
{
    image_index = 8
    image_angle += 8
    hspeed = -1
    vspeed += 0.2;
    if y >= room_height + 192 {instance_destroy(); with Boss1Controller kills += 1}
}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode != 2
{
    BulletCollision()
    if hp <= 0
    {
        mode = 2
        sound_play(sndDeath)
        Boss1Controller.kill += 1
    }
}
