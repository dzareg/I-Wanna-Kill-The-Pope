#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1;
image_speed = 1/2;
image_xscale = 2;
image_yscale = 2;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a = instance_create(x, y, KTGExorFireball);
a.vspeed = -7;
a.gravity = 0.3;
a.alarm[0] = 0;
alarm[0] = 2;
sound_play(sndKTGExorFireball)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if y >= room_height+32 and vspeed > 0 {instance_destroy();}
if x < 0 or x > room_width {instance_destroy();}
