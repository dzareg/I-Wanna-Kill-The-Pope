#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 2
image_speed = 1/2
collision = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
collision = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if vspeed == 0
{
    with player
    {
        if other.x > x other.hspeed -= 0.2 else other.hspeed += 0.2
    }
}
hspeed = clamp(hspeed,-8,8)
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if other.sprite_index == sprPlayerFall || other.sprite_index == sprPlayerJump
{
    if !collision
    {
        other.vspeed = -8
        other.djump = 1
        sound_play(sndTurtle)
        instance_create(other.x,other.y,RainbowShellEffect)
        collision = true
        alarm[0] = 20
    }
}
else killPlayer()
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=113
applies_to=self
invert=0
*/
#define Collision_BG2Explosion
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with instance_create(x,y,GreenShellFall)
{
    sprite_index = other.sprite_index
    hspeed = other.hspeed
}
instance_destroy()
