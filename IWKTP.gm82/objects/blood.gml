#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale=0.5;
image_yscale=0.5;
scale=random_range(2,1/2);
image_angle=random(360);
asdf=random_range(3,-3);
gravity = 0.2;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle+=asdf;
if image_angle<0 {image_angle+=360;}
if image_angle>=360 {image_angle-=360;}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy();
