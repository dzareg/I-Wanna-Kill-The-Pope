#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
triggered = false
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !triggered
{
    instance_create(0,0,InfiniteJump)
    triggered = true
    image_index = 1
    LightEffect(c_white,0.5)
    instance_create(room_width + 32,room_height - 64,IvanJustinationSpike)
    with instance_create(704, 128, SecretWarp) roomTo = rGRSecret
}
#define Collision_IvanButton2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with other instance_destroy()
#define Collision_SpikeTrap
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with other instance_destroy()
