#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
triggered = false
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !triggered
{
    triggered = true
    image_index = 1
    LightEffect(c_white,0.5)
    with instance_create(736, 768, SecretWarp) roomTo = rDotkidSecret
}
