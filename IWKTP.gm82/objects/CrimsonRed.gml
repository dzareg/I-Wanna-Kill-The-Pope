#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
active = false
hp = 6
starthp = hp
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player) && y < room_height-64
{
    with instance_create(x,y,deliciousFruit)
    {
        direction = point_direction(x,y,player.x,player.y)
        speed = 4
    }
}
alarm[0] = 50
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
path_start(PathCrimson,2,true,true)
if !instance_exists(Darkness) LightEffect(c_white,0.05)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if !active
{
    x += 8
    if x > xstart + 364
    {
        bossHpBar(CrimsonRed)
        bossName("Rubi", "Crimson", CrimsonRed)
        alarm[1] = 150
        alarm[0] = 300
        active = true
    }
}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if y > room_height-64 yy = y-70 else yy = y
if hp <= 0
{
    repeat 6
    {
        with instance_create(x,yy,CherryBounce)
        {
            direction = random(360)
            speed = 3
        }
    }
    sound_play(sndDeath)
    instance_create(x,y,bloodEmitter)
    scrScreenShake(1,10)
    instance_destroy()
}
