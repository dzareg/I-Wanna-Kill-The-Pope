#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed = 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if y > 0 gravity = 0.2
if place_meeting(x,y+vspeed,block) && y > room_height/2
{
    for(j = 0; j < 5; j += 1)
    {
        for(i = 0; i < 30; i += 1)
        {
            var a;
            a = instance_create(x,y,MagikFakeBullet)
            a.speed = j*3+5
            a.direction = 12*j+12*i
            a.b = j
        }
    }
    instance_create(0,0,StageClear)
    instance_create(x,room_height-32,Explosion)
    instance_destroy()
}
image_angle += 15
