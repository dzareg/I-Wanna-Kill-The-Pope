#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

//�v���C���[�̈ʒu�ɉ����ăJ������ړ��i�r���[����j
if(global.grav=0){
if(instance_exists(player) == true){
  view_xview = floor(player.x/800)*800;
  view_yview = floor(player.y/608)*608;
}
}else{
if(instance_exists(player2) == true){
  view_xview = floor(player2.x/800)*800;
  view_yview = floor(player2.y/608)*608;
}
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

//�v���C���[�̈ʒu�ɉ����ăJ������ړ��i�r���[����j
if(instance_exists(player) == true){
  view_xview = floor(player.x/800)*800;
  view_yview = floor(player.y/608)*608;
}
if(instance_exists(player2) == true){
  view_xview = floor(player2.x/800)*800;
  view_yview = floor(player2.y/608)*608;
}
