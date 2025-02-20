#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
triggered = false
backtrack = 0
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
triggered = true
backtrack += 1
with savePoint instance_destroy()
sound_play(sndBlockChange)
LightEffect(c_white,0.5)
switch backtrack
{
    case 1: x = 64; y = 192; break
    case 2: x = 64; y = 192; break
    case 3: x = 704; y = 480; trigger10.triggered = true; break
    case 4: x = 608; y = 480; break
    case 5: x = 736; y = 352; break
    case 6: with player instance_destroy(); room_goto(rHubRoom); break
}
