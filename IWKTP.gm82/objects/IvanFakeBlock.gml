#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
activate = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///rotate after collision
if activate image_angle += 8
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !activate
{
    solid = false
    activate = true;
    vspeed = 8;
    depth = -10;
    sound_play(sndBreak)
}
