#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_yscale = 0.5
ltg = false
fadeout = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
fadeout = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if fadeout image_alpha -= 0.05
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !ltg
{
    sound_play(sndLTG)
    killPlayer()
    LightEffect(c_white,0.5)
    alarm[0] = 20
    ltg = true
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if ltg draw_sprite_ext(sprDotkidLTG,-1,view_xview,view_yview,1,1,0,c_white,image_alpha)
