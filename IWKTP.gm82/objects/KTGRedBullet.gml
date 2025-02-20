#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with instance_create(x+16*image_xscale,y+16*image_yscale,KTGDeadBullet)
{
    sprite_index = sprKTGRedBulletRotate
    image_xscale = other.image_xscale
    image_yscale = other.image_yscale
}
instance_destroy()
