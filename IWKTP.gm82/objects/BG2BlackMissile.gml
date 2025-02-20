#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
animation = 0
image_xscale = 0
image_yscale = 0
speed = 2
if instance_exists(player) {direction = point_direction(x,y,player.x,player.y)}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
animation += 0.5
if animation >= 10 {animation = 0}
speed += 0.15
if image_xscale < 0.75 {image_xscale += 0.05}
if image_yscale < 0.75 {image_yscale += 0.05}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite(sprBG2Ora,round(animation),x,y)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
