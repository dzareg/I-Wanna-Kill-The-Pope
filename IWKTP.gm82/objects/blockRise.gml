#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (place_meeting(x,y-player.vspeed-1,player)) {
    yspeed=-2;
    player.y+=yspeed;
}

y+=yspeed;
