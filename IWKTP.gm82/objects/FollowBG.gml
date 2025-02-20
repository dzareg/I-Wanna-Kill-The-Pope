#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch room
{
    case rEdge: sprite = sprEdgeBG break
    case rTTT:  sprite = sprTTTBG break
}
draw_sprite(sprite,-1,view_xview,view_yview)
