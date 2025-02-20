#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = PDSpikeRight
tag = 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
if triggered
{
    vspeed = 2
    if y >= ystart + 32 {vspeed = 0; hspeed = 4}
}
