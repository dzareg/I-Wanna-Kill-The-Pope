#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale = 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha -= 0.05
scale += 0.1
if image_alpha < 0 instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(pixelfont)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_red)
draw_set_alpha(image_alpha)
draw_text_transformed(x,y,string( floor((5750-BonzoTimer.timer)/50) ),scale,scale,0)
draw_set_alpha(1)
draw_set_color(c_white)
