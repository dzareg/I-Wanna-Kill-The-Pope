#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for(i=0; i<16; i+=1)
{
    for(j=0; j<13; j+=1)
        instance_create(i*64,j*64,NoesisBGTile)
}
