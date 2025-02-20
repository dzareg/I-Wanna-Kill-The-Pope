#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
getreal = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = view_xview
y = view_yview
if getreal
{if image_alpha < 1 {image_alpha += 1/50}}
else
{if image_alpha > 0 {image_alpha -= 1/50}}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_alpha(image_alpha)
draw_set_color(c_black)
draw_rectangle(view_xview-32,view_yview-32,view_xview+view_wview+32,view_yview+view_hview+32,false)
draw_set_color(c_white)
draw_set_alpha(1)
