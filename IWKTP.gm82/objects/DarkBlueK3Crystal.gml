#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scrAchievementGet(1)
sound_play(sndDarkBlueK3CrystalPickup)
sound_play(sndSpikeTrap)
with SpikeTrigger {if tag == 4 triggered = true}
instance_destroy()
