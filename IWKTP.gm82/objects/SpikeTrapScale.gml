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
    if lengthx > 0 {if image_xscale < lengthx {image_xscale += velx} else {velx = 0}}
    if lengthx < 0 {if image_xscale > lengthx {image_xscale -= velx} else {velx = 0}}

    if lengthy > 0 {if image_yscale < lengthy {image_yscale += vely} else {vely = 0}}
    if lengthy < 0 {if image_yscale > lengthy {image_yscale -= vely} else {vely = 0}}
}
