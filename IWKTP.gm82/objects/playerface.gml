#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//���񂾂Ƃ��ɔ�Ԏ�
image_speed=0;
image_index=irandom(3);

speed=random_range(1,3)
direction=random(360)
if(irandom(1)=1) xscale=-1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity=0.3
if(global.grav=0) gravity_direction=270
if(global.grav=1) gravity_direction=90
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(other.solid=1){
if(vspeed<0.5){
vspeed=0
hspeed=0
}else{
vspeed*=0.3
hspeed*=0.5
}
}
move_bounce_solid(0)
