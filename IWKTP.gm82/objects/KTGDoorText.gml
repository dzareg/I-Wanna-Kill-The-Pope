#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with KTGDoor
{
    if !locked
    {
        draw_set_valign(fa_middle)
        draw_set_halign(fa_middle)
        draw_set_font(rog)
        with player drawTextOutlined(x,y-80,"Press UP to enter",c_white,c_black,2,8,1,other.textscale)
        if entering draw_sprite(sprPlayerBack,-1,x,y)
    }
}
