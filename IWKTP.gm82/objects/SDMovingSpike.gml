#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprSpikeDown
image_blend = make_color_rgb(214,235,241)
mode = -1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if FakeWarp.triggered vspeed = 1
if y == ystart - 32 mode = 1
if y == ystart mode = -1
vspeed *= mode
