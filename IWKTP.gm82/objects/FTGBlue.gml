#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
image_speed = 0
alarm[3] = 200
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
path_position = 0.75
if !instance_exists(Darkness) LightEffect(c_white,0.05)
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*if instance_exists(player) && hp <= starthp/2
instance_create(player.x,room_height,FTGBlueHydroPump)
with BossIndicator instance_destroy()
alarm[3] = 250
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*if instance_exists(player)
{
    xx = player.x
    with instance_create(xx,room_height-48,BossIndicator) scale = 0.25
}
alarm[2] = 50
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
        bossHpBar(FTGBlue)
        bossName("Blue", "FTG", FTGBlue)
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
if iframes == 0
{
    for(i=0; i < 2; i+=1)
    {
        with instance_create(0,500+32*i,deliciousFruit)
        {
            sprite_index = sprCherryAzure
            hspeed = random_range(2,3)
        }
        with instance_create(room_width,500+32*i,deliciousFruit)
        {
            sprite_index = sprCherryAzure
            hspeed = random_range(-2,-3)
        }
    }
}
event_inherited()
if hp <= 0
{
    //screenshake(1,10)
    instance_create(x,y,TouhouDeath)
    instance_destroy()
}
