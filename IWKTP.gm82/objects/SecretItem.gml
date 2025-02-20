#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
counter = 0
mode = -1
pickedup = false
image_speed = 0
switch room
{
    case rGRSecret: image_index = 0; break;
    case rDotkidSecret: image_index = 1; break;
    case rACSecret: image_index = 2; break;
    case rATKSecret: image_index = 3; break;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !pickedup
{
    y = ystart + lengthdir_y(10, counter);
    counter += 2;
}
else
{
    with savePoint
    {
        image_alpha -= 0.02;
        if image_alpha < 0 instance_destroy()
    }
    if image_xscale > 0.5 image_xscale -= 0.05
    if image_yscale > 0.5 image_yscale -= 0.05
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if pickedup
{
    if instance_exists(player)
    {
        x = player.x
        y = player.y-32
    }
    else
    {
        vspeed = -0.2
        image_alpha -= 0.02
    }
}
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !pickedup
{
    if image_index == 0
    {
        with SpikeTrigger triggered = true
        a = instance_create(48,496,SecretWarp)
        a.roomTo = rEdge
        a.type = 1
        sound_play(sndItem1)
    }
    if image_index == 1
    {
        instance_create(x,y,InfiniteJump)
        with SpikeTrigger {if tag == 3 triggered = true}
        with DotkidLTG instance_destroy()
        a = instance_create(64,64,SecretWarp)
        a.roomTo = rCrimson
        a.type = 2
        sound_play(sndItem2)
    }
    if image_index == 2
    {
        with SpikeTrigger triggered = true
        a = instance_create(32,544,SecretWarp)
        a.roomTo = rHubRoom
        a.type = 3
        sound_play(sndItem3)
    }
    if image_index == 3
    {
        with SpikeTrigger if tag == 4 triggered = true
        a = instance_create(736,528,SecretWarp)
        a.roomTo = rHubRoom
        a.type = 4
        sound_play(sndItem4)
    }
    pickedup = true
}
