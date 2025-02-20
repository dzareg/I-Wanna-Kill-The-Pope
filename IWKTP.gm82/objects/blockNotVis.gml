#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
collide = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !collide
{
    if distance_to_object(player)<2 || distance_to_object(player2)<2
    {
        sound_play(sndBlockChange)
        collide = true
    }
}
if collide && image_alpha < 1 image_alpha += 0.1
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=other
invert=0
*/
