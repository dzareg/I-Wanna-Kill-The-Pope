#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
triggered = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
y+=yspeed;
if (place_meeting(x,y-2,player))
{
    if vel != 0 {hspeed = vel}
    a=instance_place(x,y-2,player)
    a.y+=vspeed+yspeed;

    with (a) {if (place_free(x+other.hspeed,y)) x+=other.hspeed;}
}
if (place_meeting(x,y+17,player2))
{
    a=instance_place(x,y+17,player2)
    a.y+=vspeed+yspeed;
    with (a) {if (place_free(x+other.hspeed,y)) x+=other.hspeed}
}
if (vspeed<0) {yspeed=vspeed; vspeed=0}
if (yspeed>0) {vspeed=yspeed; yspeed=0}
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !triggered && vspeed == 0
{
    triggered = true
    vspeed = -1
}
