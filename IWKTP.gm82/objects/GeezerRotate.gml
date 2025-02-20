#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.options[5] == 0
{
    instance_destroy()
    exit
}
asdf = choose(16,-16)
zxcv = 0;
if !instance_exists(RotateSurface) instance_create(0, 0, RotateSurface)
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !zxcv {zxcv = 1; view_angle = choose(asdf, -asdf);}
if view_angle < 0 {view_angle += 2;}
if view_angle > 0 {view_angle -= 2;}
if view_angle == 0 {instance_destroy();}
