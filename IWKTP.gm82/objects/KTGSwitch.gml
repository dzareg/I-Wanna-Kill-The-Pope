#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if active image_index = 1 else image_index = 0
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_user(0)
#define Collision_KTGRedBullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !other.dead {event_user(0); other.dead = true}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with other instance_destroy()
sound_play(sndMenuSwitch)
active = !active
with KTGLaserOn active = !active
//with KTGLaserOff active = !active
//with KTGVerticalLaserOn active = !active
//with KTGVerticalLaserOn active = !active
