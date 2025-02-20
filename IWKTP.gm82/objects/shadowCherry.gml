#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/15;
alarm[0] = 100
alarm[1] = 10
killoutsideroom = false
if room == rCTB {sprite_index = CTBCherry}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
killoutsideroom = true
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,CherryShadow)
alarm[1] = 3
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if killoutsideroom == true {instance_destroy()}
