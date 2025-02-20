#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
vspeed = -4
mode = 0
counter = 0
hp = 30
starthp = hp
maxhp = 30
pause = true
dead = false
alarm[0] = 100
alarm[1] = 2
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprInflukaAttack
mode = 1
pause = false
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !pause && !dead
{
    sprite_index = sprInflukaAttack
    if mode == 1
    {
        repeat 8 instance_create(xx,y,TTTInflukaPurpleBall)
        instance_create(xx,y,TTTInflukaEffect)
        sound_play(sndInflukaAttack1)
    }
    if mode == -1
    {
        instance_create(xx,y,TTTInflukaPentagram)
        sound_play(sndInflukaAttack2)
    }

    counter += 1
    if counter >= 3
    {
        mode *= -1
        alarm[2] = 100
        counter = 0
        pause = true
    }
}
alarm[1] = 50
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
pause = false
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with instance_create(x+random_range(-50,50), y+random(50), Explosion) killplayer = false
alarm[3] = 10
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if alarm[2] == 75 sprite_index = sprInflukaIdle
xx = x-200
yy = y+219
if y <= room_height-32-219 && vspeed != 0
{
    bossName("Influka", "TTT", TTTInfluka)
    bossHpBar(TTTInfluka)
    vspeed = 0
    y = room_height-32-219
}
if hp <= 0
{
    gravity = 0.1
    if y >= 800
    {
        with Boss2Controller event_user(0)
        instance_destroy()
    }

}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
BulletCollision()
if hp <= 0 && !dead
{
    sprite_index = sprInflukaDeath
    sound_play(sndInflukaDeath)
    alarm[3] = 1
    dead = true
}
