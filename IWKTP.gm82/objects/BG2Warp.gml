#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
triggered = false
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered
{
    with player instance_destroy()
    room_goto(rTTT)
}
if !triggered
{
    with savePoint instance_destroy()
    instance_create(96,512,savePoint)
    x = 720
    y = 336
    triggered = true
    LightEffect(c_white,0.5)
    background_visible[6] = true
    background_visible[7] = true
    with instance_create(32,384,SpikeTrigger) tag = 11
    instance_create(400,336,BG2WorldPeace)
    instance_create(384,608,spikeDown)
    with world
    {
        musicfadeout = true
        ss_LoopSound(musWorldPeace)
        ss_SetSoundVol(musWorldPeace,vol)
    }
    with SpikeTrigger
    {
        if tag == 10 triggered = true
        if tag < 10 instance_destroy()
    }
}
