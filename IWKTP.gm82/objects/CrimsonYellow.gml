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
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
path_start(PathCrimson,2,true,true)
path_position = 0.5
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
    if x > xstart + 384
    {
        bossHpBar(CrimsonYellow)
        bossName("Kin", "Crimson", CrimsonYellow)
        alarm[1] = 150
        active = true
    }
}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if iframes == 0 splitobject(10,4,CrimsonYellowCherry,1,false,x,y)
event_inherited()
if hp <= 0
{
    sound_play(sndDeath)
    instance_create(x,y,bloodEmitter)
    scrScreenShake(1,10)
    instance_destroy()
}
