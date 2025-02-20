#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
triggered = false
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_user(0)
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !other.noclip event_user(0)
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered == false
{
    triggered = true
    image_index = 1
    sound_play(sndSpikeTrap)
    if y < 304
    {
        SpikeTrapG.hspeed = -2.5
        instance_create(512,192,spikeRight)
        with SpikeTrigger {if tag == -1 triggered = true}
    }
    else
    {
        with SpikeTrigger {if tag == 5 triggered = true}
    }
}
