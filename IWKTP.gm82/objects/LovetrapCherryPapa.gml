#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
bossName("Cherry Papa", "LoveTrap", LovetrapCherryPapa)
image_xscale = 6
image_yscale = 6
image_speed = 1/15
vspeed = 6
suckcherries = false
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,room_height+128,TTT1Ryu)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y+vspeed,block) && y > room_height/2
{
    scrScreenShake(1,5)
    vspeed = -8
    instance_create(x,y,LovetrapShootEffect)
}
with LovetrapShootEffect
{
    x = other.x
    y = other.y
}
image_angle += 8
if !suckcherries vspeed += 0.2
else
{
    if vspeed > 0 vspeed -= 0.1
    if vspeed < 0 vspeed += 0.1
}
#define Collision_deliciousFruit
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with other
{
    if other.suckcherries
    {
        direction = point_direction(x,y,other.x,other.y)
        speed = 2
        depth = 0
    }
}
#define Collision_TTT1Ryu
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with deliciousFruit instance_destroy()
sound_play(sndDeath)
scrScreenShake(2,20)
scrVisualEffect(x,y,sprShootEffect,0.5,2,2,depth-1,c_red)
repeat 12
{
    u = instance_create(x+random_range(-sprite_width/2,sprite_width/2),y+random_range(-sprite_height/2,sprite_height/2),deliciousFruit)
    u.hspeed = random_range(-5,5)
    u.vspeed = -6
    u.gravity = 0.2
}
instance_destroy()
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
suckcherries = true
with deliciousFruit
{
    direction = point_direction(x,y,other.x,other.y)
    speed = 8
}
alarm[1] = 50
