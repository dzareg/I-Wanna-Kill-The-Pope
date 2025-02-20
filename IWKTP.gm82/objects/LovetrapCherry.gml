#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
pics = 6;
rollReverse = false
dth = 0.1

for(i=0; i<pics; i+=1) {
    cpic = instance_create(x,y,deliciousFruit);
    cpic.sprite_index = self.sprite_index;
    cpic.depth = self.depth;
    if(rollReverse) {
        with(cpic) {
            path_start(LoveTrapCherryPath,2,1,false);
        }
    } else {
        with(cpic) {
            path_start(LoveTrapCherryPath,-2,1,false);
        }
    }
    cpic.path_position = i/pics + dth;
}
