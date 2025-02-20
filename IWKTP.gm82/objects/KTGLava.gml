#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0.7
mode = 0
triggered = false
tag = 9

count=room_width/32+1
image_xscale=count

color=make_color_rgb(234,30,0)
color2=make_color_rgb(90,12,0)
index=lava_s
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
if triggered && mode == 0
{
    if y > 1792 vspeed = -8 else vspeed -= 0.1
    if y < 1792 && y > 672 {if vspeed < -1 vspeed += 0.5}
    if y < 672 && instance_exists(player) mode = 1
}
if mode == 1 vspeed = 8
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,0)

draw_set_alpha(1)
draw_rectangle_color(0,y+30,room_width,room_height,color,color,color2,color2,0)

for(i=1;i<=count;i+=1)
{
draw_sprite_ext(sprite_index,image_index,32*(i-1),y,1,1,0,c_white,1)
}
