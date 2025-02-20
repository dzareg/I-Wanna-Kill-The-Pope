#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if trigger02.triggered == true
{
image_alpha -= 0.02
if image_alpha <= 0 {instance_destroy()}
}
