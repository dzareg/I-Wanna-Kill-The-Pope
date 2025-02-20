#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface = surface_create(view_wview[0], view_hview[0]);

surface_set_target(surface);
draw_clear_alpha(c_black, 0);
surface_reset_target();

set_automatic_draw(false);
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if surface_exists(surface) {surface_free(surface);}
set_automatic_draw(true);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(ScreenShake) instance_destroy()
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(ScreenShake) exit

surface_set_target(surface);
d3d_transform_set_translation(-view_xview, view_yview, 0);
screen_redraw();
d3d_transform_set_identity();
surface_reset_target();

draw_clear_alpha(c_black, 0);
draw_surface_ext(surface, view_xview[0], view_yview[0], 1, 1, 0, c_white, 1);

draw_surface_ext(surface, round(view_xview[0]/800)*800 + (view_xview[0]-round(view_xview[0]/800)*800)*(1/2), round(view_yview[0]/608)*608 + (view_yview[0]-round(view_yview[0]/608)*608)*(1/2), 1, 1, 0, c_white, 5/6);
draw_surface_ext(surface, view_xview[0] + (view_xview[0]-round(view_xview[0]/800)*800)*(1/2), view_yview[0] + (view_yview[0]-round(view_yview[0]/608)*608)*(1/2), 1, 1, 0, c_white, 5/6);

draw_surface_ext(surface, round(view_xview[0]/800)*800, round(view_yview[0]/608)*608, 1, 1, 0, c_white, 4/6);
draw_surface_ext(surface, view_xview[0] + (view_xview[0]-round(view_xview[0]/800)*800)*(2/2), view_yview[0] + (view_yview[0]-round(view_yview[0]/608)*608)*(2/2), 1, 1, 0, c_white, 4/6);

draw_surface_ext(surface, round(view_xview[0]/800)*800 - (view_xview[0]-round(view_xview[0]/800)*800)*(1/2), round(view_yview[0]/608)*608 - (view_yview[0]-round(view_yview[0]/608)*608)*(1/2), 1, 1, 0, c_white, 3/6);
draw_surface_ext(surface, view_xview[0] + (view_xview[0]-round(view_xview[0]/800)*800)*(3/2), view_yview[0] + (view_yview[0]-round(view_yview[0]/608)*608)*(3/2), 1, 1, 0, c_white, 3/6);

draw_surface_ext(surface, round(view_xview[0]/800)*800 - (view_xview[0]-round(view_xview[0]/800)*800)*(2/2), round(view_yview[0]/608)*608 - (view_yview[0]-round(view_yview[0]/608)*608)*(2/2), 1, 1, 0, c_white, 2/6);
draw_surface_ext(surface, view_xview[0] + (view_xview[0]-round(view_xview[0]/800)*800)*(4/2), view_yview[0] + (view_yview[0]-round(view_yview[0]/608)*608)*(4/2), 1, 1, 0, c_white, 2/6);

draw_surface_ext(surface, round(view_xview[0]/800)*800 - (view_xview[0]-round(view_xview[0]/800)*800)*(3/2), round(view_yview[0]/608)*608 - (view_yview[0]-round(view_yview[0]/608)*608)*(3/2), 1, 1, 0, c_white, 1/6);
draw_surface_ext(surface, view_xview[0] + (view_xview[0]-round(view_xview[0]/800)*800)*(5/2), view_yview[0] + (view_yview[0]-round(view_yview[0]/608)*608)*(5/2), 1, 1, 0, c_white, 1/6);

screen_refresh();
#define Other_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if surface_exists(surface) {surface_free(surface);}
set_automatic_draw(true);
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if surface_exists(surface) {surface_free(surface);}
set_automatic_draw(true);
