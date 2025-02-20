#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with player other.xscale = image_xscale
with player2 other.xscale = image_xscale
hspeed = xscale*16
dmg = 1
crit = false
noclip = false
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y+vspeed,BulletDestroy)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if crit
{
    sprite_index = sprRedBullet
    dmg = 2
}
if place_meeting(x,y,block) && !noclip
{
    if xscale > 0 x = other.x
    else x = other.x+other.sprite_width
    instance_destroy()
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
