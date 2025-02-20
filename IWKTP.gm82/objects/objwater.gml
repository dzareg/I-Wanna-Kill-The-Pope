#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//�ӂ�ӂ킷��Ƃ悭�����鐅���B
//takatata�Ƃ��Ɏg���Ă܂�
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with (player) {
djump=1
if(vspeed > 2) {vspeed = 2;}
}
#define Collision_player2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with (player2) {
djump=1
if(vspeed < -2) {vspeed = -2;}
}
