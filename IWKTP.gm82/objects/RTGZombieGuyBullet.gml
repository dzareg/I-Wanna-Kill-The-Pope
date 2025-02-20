#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
collision = false
kill = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if kill image_alpha -= 0.02
if image_alpha < 0 instance_destroy()
#define Collision_niseblock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !collision && instance_exists(player)
{
    direction = point_direction(x,y,player.x,player.y)
    collision = true
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
