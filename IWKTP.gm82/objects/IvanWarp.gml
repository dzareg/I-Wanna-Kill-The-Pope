#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
triggered = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered
{
    if x < 768 {hspeed = 4} else {hspeed = 0; x = 768}
    if y < 528 {vspeed = 4} else {vspeed = 0; y = 528}
}
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !triggered
{
    triggered = true
    sound_play(sndBlockChange)
    LightEffect(c_white,0.5)
    instance_create(room_width/2,128,IvanJustination);
    instance_create(272,304,spikeDown);
    instance_create(32,544,IvanButton3)
    with savePoint instance_destroy()
    instance_create(608,384,savePoint)

    with instance_create(224,416,SpikeTrigger) tag = 10
    with SoundPlayer instance_destroy()
    with SpikeTrigger
    {
        if tag == 4 instance_destroy()
        if tag >= 6 && tag <= 8 triggered = true
        if tag == 5 triggered = true
    }
    with IvanButton2 triggered = true
    with IvanFakeBlock active = true

    sound_play(sndBlockChange)
}
if triggered && x == 768 && vspeed == 0
{
    with player instance_destroy()
    room_goto(rEdge)
}
