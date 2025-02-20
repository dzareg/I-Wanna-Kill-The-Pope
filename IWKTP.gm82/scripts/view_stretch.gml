var i,spd;

//view_stretch(view_number,stretch_speed,start_point)

/*start_point
    7 8 9
    4 5 6
    1 2 3
*/

i=argument0
spd=argument1
as=view_hview[i]/view_wview[i]

global.view_hstretchspeed[i]=spd
global.view_vstretchspeed[i]=spd*as

switch(argument2){

case 1:
global.view_hspeed2[i]=0
global.view_vspeed2[i]=-spd*as
break;

case 2:
global.view_hspeed2[i]=-spd/2
global.view_vspeed2[i]=-spd*as
break;

case 3:
global.view_hspeed2[i]=-spd
global.view_vspeed2[i]=-spd*as
break;

case 4:
global.view_hspeed2[i]=0
global.view_vspeed2[i]=-spd*as/2
break;

case 5:
global.view_hspeed2[i]=-spd/2
global.view_vspeed2[i]=-spd*as/2
break;

case 6:
global.view_hspeed2[i]=-spd
global.view_vspeed2[i]=-spd*as/2
break;

case 7:
global.view_hspeed2[i]=0
global.view_vspeed2[i]=0
break;

case 8:
global.view_hspeed2[i]=-spd/2
global.view_vspeed2[i]=0
break;

case 9:
global.view_hspeed2[i]=-spd
global.view_vspeed2[i]=0
break;




}
