#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
hspeed = 5
image_xscale = 2
image_yscale = 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (place_meeting(x,y-2,player)) {
    if vel != 0 {hspeed = vel}
    a=instance_place(x,y-2,player)
    a.y+=vspeed+yspeed;

    with (a) {
        if (place_free(x+other.hspeed,y)) x+=other.hspeed;
    }
}
if (place_meeting(x,y+17,player2)) {
    a=instance_place(x,y+17,player2)
    a.y+=vspeed+yspeed;

    with (a) {
        if (place_free(x+other.hspeed,y)) x+=other.hspeed;
    }
}
if image_alpha < 1 image_alpha += 0.04
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
