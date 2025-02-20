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
/*
if length == 0 {length = room_width + 64}
if trg.triggered && vel > 0 {if x < xstart + length {hspeed = vel} else {hspeed = 0}}
if trg.triggered && vel < 0 {if x > xstart - length {hspeed = vel} else {hspeed = 0}}
*/
TagCheck()
if triggered
{
    if velx > 0 {if x < xstart + lengthx hspeed = velx else hspeed = 0}
    if velx < 0 {if x > xstart - lengthx hspeed = velx else hspeed = 0}
}
