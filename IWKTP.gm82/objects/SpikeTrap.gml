#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///IWKTP TRIGGER SYSTEM GUIDE (written by dzareg)
/*
    velx/vely = spike's speed
    lengthx/lengthy = distance to travel
    sprite_index, tag = self explanatory
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
    if tag == other.tag && triggered && other.trg == 0
    {
        other.triggered = true
        if path != 0
            with other path_start(other.path,other.pathspeed,3,other.absolute)
    }
}
if trg != 0
{
    with trg {if triggered other.triggered = true}
}
if triggered
{
    if velx > 0 {if x < xstart + lengthx hspeed = velx else hspeed = 0}
    if velx < 0 {if x > xstart - lengthx hspeed = velx else hspeed = 0}
    if vely > 0 {if y < ystart + lengthy vspeed = vely else vspeed = 0}
    if vely < 0 {if y > ystart - lengthy vspeed = vely else vspeed = 0}
}
if lengthx == 114514 || lengthy == 114514
{
    if x > xstart+32 ||
       x < xstart-32 ||
       y > ystart+32 ||
       y < ystart-32
       depth = -1
}
if room == rDestination image_blend = 0
