#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed = 6
image_speed = 1/5
alarm[0] = 150
bossName("Angel Kid", "Heaven Trap 2", HT2AngelKid)
death = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(SDSpaceGuy)
{
    with instance_create(x+55*image_xscale,y,HT2AngelKidCherry)
    {
        speed = 2
        direction = 90*-other.image_xscale
    }
}
sound_play(sndShoot)
alarm[0] = 150
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    if player.x > x image_xscale = 1 else image_xscale = -1
}
if mode == 0 && y >= 196
{
    vspeed = 0
    mode = 1
}
if mode == 1
{
    angle += 4
    y = 196 + lengthdir_y(20, angle)
}
if !instance_exists(SDSpaceGuy) with SpikeTrap y += 10
#define Collision_MagikPhase3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat 2 instance_create(x+random_range(-20,20),y+random_range(-20,20),bloodEmitter)
scrScreenShake(1,10)
sound_play(sndDeath)
instance_destroy()
