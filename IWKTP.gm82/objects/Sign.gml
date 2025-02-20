#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite(sprite_index,-1,x,y)
if place_meeting(x,y,player)
{
    draw_set_font(rog)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    drawTextOutlined(x+18,y-15,"Press UP to read",c_white,c_black,2,8,1,1)
}
#define KeyPress_38
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(place_meeting(x,y,player))
{

show_message(text)

}
