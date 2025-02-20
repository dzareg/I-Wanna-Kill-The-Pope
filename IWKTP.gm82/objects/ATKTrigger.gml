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
with SpikeTrigger
{
    if tag == 2 && triggered
    {
        other.triggered = true
        other.visible = true
    }
}
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with SpikeTrigger
{
    if tag == 3 && other.triggered triggered = true
}
