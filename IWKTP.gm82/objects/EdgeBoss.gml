#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
triggered = false
tag = 2
hp = 15
mode = -1
alarm[1] = 1
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player) && hp > 0
{
    var a;
    a = instance_create(x,y,deliciousFruit)
    a.speed = 4
    a.direction = point_direction(x,y,player.x,player.y)
    a.sprite_index = sprCherryYellow
}
alarm[0] = 50
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if hp <= 0
{
    repeat 2
    {
        var a;
        a = instance_create(x+random_range(-32,32),y+random_range(-32,32),Explosion)
        a.killplayer = false
    }
}
alarm[1] = 10
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
TagCheck()
if triggered && mode == -1 mode = 0
if mode == 0
{
    y = lerp(y, 544, 0.2)
    if y <= 548
    {
        alarm[0] = 25
        bossName("Kaito", "EDGE", EdgeBoss)
        mode = 1
    }
}
if hp <= 0
{
    vspeed = 2
    gravity = 0.2
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if hp <= 0
{
    with SpikeTrigger
    {
        if tag == 4 triggered = true
    }
    instance_destroy()
}
