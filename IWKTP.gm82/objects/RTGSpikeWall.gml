#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 1
createtrigger = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with SpikeTrigger
{
    if triggered
    {
        if tag == 1 with other image_angle += 0.3 * mode
        if tag == 2 {with other createtrigger = true; instance_destroy()}
        if tag == 3
        {
            with other {if mode == -1 {sound_play(sndSpikeTrap); mode = 1}}
        }
    }
}
if createtrigger
{
    with instance_create(128,288,SpikeTrigger) tag = 3
    sound_play(sndBlockChange)
    mode = -1;
    createtrigger = false
}
