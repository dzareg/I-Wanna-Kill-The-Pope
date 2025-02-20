#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
direction = choose(choose(60,65,70),choose(110,115,120))
gravity = 0.2
image_xscale = 2
image_yscale = 2
speed = 6
pickedup = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if pickedup image_alpha -= 0.2
if image_alpha <= 0 instance_destroy()
if speed > 6 speed = 6
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !pickedup
{
    pickedup = true
    sound_play(sndContraPickup)
    with Boss2Controller kills += 1
}
#define Collision_GeezerBlock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if self.x>700{
x=748; direction=choose(110,115,120);}
if self.x<100{
x=52; direction=choose(60,65,70);}
#define Collision_GeezerBlock2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if hspeed>0 {direction=65;}
if hspeed<0 {direction=115;}
