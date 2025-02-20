#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
teleport = true
alarm[0] = 5
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
teleport = false
#define Collision_TDTarget
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if teleport
{
    with other
    {
        x = irandom_range(32,768)
        y = irandom_range(32,576)
    }
}
