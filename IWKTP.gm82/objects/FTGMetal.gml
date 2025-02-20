#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
image_speed = 0
active = false
hp = 6
starthp = hp
alarm[2] = 200
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
path_start(PathCrimson,2,true,true)
path_position = 0.25
if !instance_exists(Darkness) LightEffect(c_white,0.05)
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*if instance_exists(player) && hp <= starthp/2
instance_create(player.x,y,FTGMetalTarget)
alarm[2] = 300
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if iframes > 0 image_index = 1 else image_index = 0
if !active
{
    x -= 8
    if x < xstart - 384
    {
        bossHpBar(FTGMetal)
        bossName("Metal", "FTG", FTGMetal)
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
if iframes == 0 repeat irandom_range(1,2) instance_create(random_range(x+32,x-32),random_range(y+32,y-32),FTGMetalHatchling)
event_inherited()
if hp <= 0
{
    //screenshake(1,10)
    instance_create(x,y,TouhouDeath)
    instance_destroy()
}
