#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/15;
alarm[0] = 100
killoutsideroom = false
if room == rCTB {sprite_index = CTBCherry}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
killoutsideroom = true
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if killoutsideroom instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(IvanJustination) && speed != 0
    draw_sprite_ext(sprCherryOutline,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
draw_self()
