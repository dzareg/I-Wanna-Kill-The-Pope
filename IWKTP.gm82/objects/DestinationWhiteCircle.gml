#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///make spikes black
sprite_index = sprDestinationCircle
with spikeDown image_blend = 0
with spikeUp image_blend = 0
with spikeLeft image_blend = 0
with spikeRight image_blend = 0
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with player
{
    other.x = x
    other.y = y
}
