#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
textscale = 0
image_xscale = 6
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with SpikeTrigger
    if tag == 3 triggered = true
with TTTBulletGun
{
    if mode == 2
    {
        mode = 1
        t = 0
        image_angle = 0
    }
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with SpikeTrigger
{
    if tag == 3
    {
        if !triggered && other.triggered && other.textscale < 1 other.textscale += 0.05
        if triggered && other.textscale > 0 other.textscale -= 0.05
    }
}
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !triggered  {triggered = true; alarm[0] = 500}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    draw_set_font(-1)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_set_font(rog)
    drawTextOutlined(player.x+random_range(-2,2),player.y-32+random_range(-2,2),"SURVIVE!",c_red,c_black,1,8,1,textscale)
}
