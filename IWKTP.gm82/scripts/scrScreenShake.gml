///scrScreenShake(length, shake_intensity)
if global.options[5] == 0 exit
var a;
a = instance_create(0,0,ScreenShake)
a.length = argument0
a.shake_intensity = argument1
