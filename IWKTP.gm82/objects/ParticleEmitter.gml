#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_blend = 100
alarm[0] = 3
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with instance_create(x+random_range(-32,32),y+32*choose(-1,1),Particle)
{
    direction = point_direction(x,y,other.x,other.y)
    speed = 3
    image_blend = other.image_blend
}
with instance_create(y+32*choose(-1,1),y+random_range(-32,32),Particle)
{
    direction = point_direction(x,y,other.x,other.y)
    speed = 3
    image_blend = other.image_blend
}
alarm[0] = 3
