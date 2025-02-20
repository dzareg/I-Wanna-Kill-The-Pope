#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room != rGRSecret && room != rDotkidSecret && room != rACSecret && room != rATKSecret sound_play(sndSecretWarpAppear)
image_xscale = 0
image_yscale = 0
alarm[0] = 10
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,SecretWarpParticle)
alarm[0] = 3
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle += 4
if image_xscale < 1 image_xscale += 0.02
if image_yscale < 1 image_yscale += 0.02
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if type != 0 global.item[type] = 1
switch type
{
    case 1: scrAchievementGet(4) break
    case 2: scrAchievementGet(10) break
}
with other instance_destroy()
room_goto(roomTo)
