#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with SDSpaceGuy
{
    if spikeraise
    {
        with other
        {
            if y > ystart-64 vspeed = -2 else vspeed = 0
        }
    }
}
if instance_exists(MagikPhase3) vspeed = 2
if y > 700 instance_destroy()
