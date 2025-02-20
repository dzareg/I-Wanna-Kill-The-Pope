#define Collision_SpikeTrap
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(sndBreak)
sound_play(sndBreak)
with instance_create(x+16,y+16,FallingBlock) sprite_index = sprCrimsonTileCenter
instance_destroy()
