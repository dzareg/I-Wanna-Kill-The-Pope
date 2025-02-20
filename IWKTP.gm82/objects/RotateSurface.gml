#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface2 = surface_create(view_wview[0], view_hview[0]);

surface_set_target(surface2);
draw_clear_alpha(c_black, 0);
surface_reset_target();

set_automatic_draw(false);
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if surface_exists(surface2) {surface_free(surface2);}
set_automatic_draw(true);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(GeezerRotate) {instance_destroy();}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(GeezerRotate) exit
surface_set_target(surface2);
d3d_transform_set_translation(-view_xview, view_yview, 0);
screen_redraw();
d3d_transform_set_identity();
surface_reset_target();

draw_clear_alpha(c_black, 0);
draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0])+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0])+304, 1, 1, view_angle[0], c_white, 1);

draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(4/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(4/5))+304, 1, 1, view_angle[0]*(4/5), c_white, 5/6);
draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(6/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(6/5))+304, 1, 1, view_angle[0]*(6/5), c_white, 5/6);

draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(3/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(3/5))+304, 1, 1, view_angle[0]*(3/5), c_white, 4/6);
draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(7/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(7/5))+304, 1, 1, view_angle[0]*(7/5), c_white, 4/6);

draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(2/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(2/5))+304, 1, 1, view_angle[0]*(2/5), c_white, 3/6);
draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(8/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(8/5))+304, 1, 1, view_angle[0]*(8/5), c_white, 3/6);

draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(1/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(1/5))+304, 1, 1, view_angle[0]*(1/5), c_white, 2/6);
draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(9/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(9/5))+304, 1, 1, view_angle[0]*(9/5), c_white, 2/6);

draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304))+304, 1, 1, 0, c_white, 1/6);
draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(10/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+view_angle[0]*(10/5))+304, 1, 1, view_angle[0]*(10/5), c_white, 1/6);

screen_refresh();
#define Other_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if surface_exists(surface2) {surface_free(surface2);}
set_automatic_draw(true);
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if surface_exists(surface2) {surface_free(surface2);}
set_automatic_draw(true);
