#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/6
hspeed = choose(-2.5,2.5)
if hspeed > 0 image_xscale = -1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if x < 48 || x > 752
{
    hspeed *= -1
    image_xscale *= -1
}
if sprite_index == sprGoombaStomp image_yscale -= 0.05
if image_yscale < 0 instance_destroy()
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if hspeed != 0
{
    if other.sprite_index == sprPlayerFall || other.sprite_index == sprPlayerJump
    {
        y += 16
        with Boss2Controller kills += 1
        other.vspeed = -4
        other.djump = 1
        sprite_index = sprGoombaStomp
        hspeed = 0
        sound_play(sndGoombaStomp)
    }
    else killPlayer()
}
