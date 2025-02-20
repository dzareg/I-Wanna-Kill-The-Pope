#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
direction = point_direction(x, y, view_xview[0]+400, view_yview[0]+304);
speed = 40;
ox = x-view_xview[0];
oy = y-view_yview[0];
alarm[0] = 10;
warning = irandom_range(1,10)
image_index = warning-1
image_speed = 0
with WarningBar instance_destroy()
sound_stop(sndWarning1)
sound_stop(sndWarning2)
sound_stop(sndWarning3)
sound_stop(sndWarning4)
sound_stop(sndWarning5)
sound_stop(sndWarning6)
sound_stop(sndWarning7)
sound_stop(sndWarning8)
sound_stop(sndWarning9)
sound_stop(sndWarning10)
if room != rBoss1
{
    switch warning
    {
        case 1:  sound_play(sndWarning1); break
        case 2:  sound_play(sndWarning2); break
        case 3:  sound_play(sndWarning3); break
        case 4:  sound_play(sndWarning4); break
        case 5:  sound_play(sndWarning5); break
        case 6:  sound_play(sndWarning6); break
        case 7:  sound_play(sndWarning7); break
        case 8:  sound_play(sndWarning8); break
        case 9:  sound_play(sndWarning9); break
        case 10: sound_play(sndWarning10); break
    }
    for (i=0; i<5; i+=1) instance_create(view_xview[0]+random_range(850,950), view_yview[0]+random_range(120,488), WarningBar)
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
speed = 1;
alarm[1] = 120;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
speed = 40;
alarm[2] = 100;
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ox += hspeed;
oy += vspeed;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite(sprite_index,image_index,view_xview[0]+ox,view_yview[0]+oy)
