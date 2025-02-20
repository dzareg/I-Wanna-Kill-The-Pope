#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(boss)
{
    if image_alpha < 1 && boss.hp > 0 image_alpha += 0.02
}
else image_alpha -= 0.02
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_alpha(image_alpha)
if instance_exists(boss)
{
    draw_set_halign(fa_center)
    draw_set_color(c_black)
    draw_rectangle(boss.x-51,boss.y-97,boss.x+51,boss.y-87,false)
    draw_rectangle(boss.x-52,boss.y-96,boss.x+52,boss.y-88,false)
    for (i=0; i<boss.hp; i+=1)
        draw_sprite_ext(sprHP,-1,boss.x - 50 + i * (100/boss.starthp),boss.y - 96,100/boss.starthp,1,1,c_white,image_alpha)
}
draw_set_alpha(1)
