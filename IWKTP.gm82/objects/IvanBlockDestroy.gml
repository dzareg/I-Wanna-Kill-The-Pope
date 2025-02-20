#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
if triggered
{
    a = instance_create(x,y,FallingBlock);
    a.sprite_index = sprite_index;
    instance_destroy()
}
