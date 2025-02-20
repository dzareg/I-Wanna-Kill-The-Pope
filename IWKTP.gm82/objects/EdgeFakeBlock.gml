#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//�����Ȃ����ǌ������u���b�N

if (!visible) {
    if (distance_to_object(player)<2 || distance_to_object(player2)<2) {
        sound_play(sndEdgeFakeBlock);
        visible=1;
    }

}
