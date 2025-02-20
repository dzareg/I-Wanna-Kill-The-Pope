#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
alarm[0] = 10
image_speed = 1/5
mode = 0
hp = 12
starthp = hp
bossHpBar(HT2GiantBlueCherry)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 1 {instance_create(x,y,HT2LilBlueCherry)}
alarm[0] = 8
if !instance_exists(HT2GiantRedCherry) {alarm[0] = 4}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if mode = 0 {y += 8; if y >= 192 {mode = 1; bossName("Blue Cherry", "Heaven Trap 2",0)}}
if mode == 2
{
    image_index = 8
    image_angle -= 8
    vspeed += 0.2;
    hspeed = 1
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
