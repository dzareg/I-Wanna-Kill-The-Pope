#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hp = 2
starthp = hp
iframes = 0
state = choose("chase","idle")
t = choose(25,50)
image_speed = 0.5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    direction = point_direction(x,y,player.x,player.y)

    if state = "chase"
    {
        speed = 2
        t -= 1
        if t <= 0
        {
            state = "idle"
            t = 75
        }

    }
    else if state = "idle"
    {
        speed = 0
        t -= 1
        if t <= 0
        {
            state = "chase"
            t = 50
        }
    }
}


if hp <=0
{
    sound_play(sndFTGMetalHatchlingDeath)
    with instance_create(x,y,FTGHatchlingParticle) image_index = 0
    with instance_create(x,y,FTGHatchlingParticle) image_index = 1
    instance_destroy()
}
IFrameControl()
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
BulletCollision()
