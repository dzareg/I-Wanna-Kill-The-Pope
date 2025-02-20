#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vel = 0
mode = 1
image_alpha = 0
alarm[0] = 25
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vel += 0.01 * mode
if vel >= 0.2 || vel <= -0.2 mode *= -1
vspeed = vel
image_alpha = TitleButton.image_alpha
//if image_alpha < 1 {image_alpha += 0.02}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if TitleButton.menu = 0
{
    draw_sprite_ext(sprMenuBlackBar,-1,room_width/2,y,3,image_alpha,0,c_white,1)
    draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
}
