#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
snapDiv = 4
if instance_exists(player)
{
    x = player.x
    y = player.y
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    x += (player.x - x) / snapDiv;
    y += (player.y - y) / snapDiv;
}
