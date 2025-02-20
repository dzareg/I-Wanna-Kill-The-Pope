var a,i,dir;

//splitobject(splitnumber,speed,createobject,toplayer(1) or randomdirection(0),selfdestroy or not,x,y)
//splitobject(�����,���ˑ��x,���˂����I�u�W�F�N�g,���@�_��(1) �� �����_��(0),���g��j�󂷂邩�ۂ�)

if(argument3){dir=point_direction(argument5,argument6,player.x,player.y)}
else{dir=random(360)}


for(i=1;i<=argument0;i+=1;)
{
    a=instance_create(argument5,argument6,argument2)
    a.speed=argument1
    a.direction=dir
    dir+=360/argument0
}

if(argument4)instance_destroy();
