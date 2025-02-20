#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
triggered = false

TrgPartSystem = part_system_create();
part_system_depth(TrgPartSystem, -100);

TrgParticle = part_type_create();
part_type_shape(TrgParticle, pt_shape_smoke);
part_type_color2(TrgParticle, 12786072, 13632743);
part_type_alpha1(TrgParticle, 0.7);
part_type_life(TrgParticle, 9, 30);
part_type_size(TrgParticle, 0.1, 0.2, 0, 0);
part_type_speed(TrgParticle, 0.05, 0.1, 0, 0);
part_type_direction(TrgParticle, 94.33, 375.85, -1.26, 0);
part_type_orientation(TrgParticle, 15.57, 241.61, 1.06, 0, false);
part_type_gravity(TrgParticle, 0, 270);
part_type_blend(TrgParticle, true);

if particle
{
    pemi = part_emitter_create(TrgPartSystem);
    part_emitter_region(TrgPartSystem, pemi, x, x+32, y, y+32, ps_shape_rectangle, ps_distr_linear);
    part_emitter_stream(TrgPartSystem, pemi, TrgParticle, 2);
}
alarm[0] = 5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered part_emitter_destroy_all(TrgPartSystem)
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sound != 0 && !triggered sound_play(sound)
triggered = true
image_alpha = 0.2
#define Collision_player2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sound != 0 && !triggered sound_play(sound)
triggered = true
image_alpha = 0.2
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
part_particles_clear(TrgPartSystem);
part_emitter_destroy_all(TrgPartSystem)
