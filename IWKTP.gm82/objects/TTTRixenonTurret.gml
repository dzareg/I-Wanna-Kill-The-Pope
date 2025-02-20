#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
direction = 135
speed = random_range(5,8)
gravity = 0.2
image_xscale = 0
image_yscale = 0
alarm[0] = 2
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndTTTBullet)
b = random_range(30,40)
image_angle += b
t += b
with instance_create(x,y,TTTBullet)
{
    speed = 5
    direction = other.t
}
alarm[0] = 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_xscale < 1
{
    image_xscale += 0.05
    image_yscale += 0.05
}
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with instance_create(x,y+16,Explosion)
{
    killplayer = false
    image_xscale = 2
    image_yscale = 2
}
instance_destroy()
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
