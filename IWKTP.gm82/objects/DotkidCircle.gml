#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///red cool circle
if instance_exists(player)
{
    draw_set_color(c_red)
    draw_circle(player.x,player.y,30,true)
}
