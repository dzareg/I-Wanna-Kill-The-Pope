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
TagCheck()
if triggered
{
    if vely > 0 {if y < ystart + lengthy vspeed = vely else vspeed = 0}
    if vely < 0 {if y > ystart - lengthy vspeed = vely else vspeed = 0}
}
