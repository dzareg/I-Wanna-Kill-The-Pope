#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = PDSpikeDown
mode = -1
tag = 3
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
if triggered vspeed = 1
if y == ystart - 16 mode = 1
if y == ystart + 16 mode = -1
vspeed *= mode
//if y == ystart - 16 || y == start + 16 vspeed *= -1
