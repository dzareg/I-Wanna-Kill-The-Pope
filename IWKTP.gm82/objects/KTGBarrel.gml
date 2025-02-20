#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if active
{
    with player
    {
        vspeed = -6
        djump = false
    }
}
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if active && instance_exists(player)
    effect_create_above(ef_spark,player.x,player.y,0.1,c_orange)
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !active
{
    sound_play(sndKTGBarrel)
    active = true
}
