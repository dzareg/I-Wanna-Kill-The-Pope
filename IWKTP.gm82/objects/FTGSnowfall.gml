#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 5
/*
FTGPrtSystem = part_system_create();
part_system_depth(FTGPrtSystem, -15);

FTGSnow = part_type_create();
part_type_sprite(FTGSnow,sprFTGSnowParticle,false,false,true)
part_type_shape(FTGSnow, pt_shape_snow);
part_type_color1(FTGSnow, 16777215);
part_type_alpha1(FTGSnow, 0.2);
part_type_life(FTGSnow, 27, 400);
part_type_size(FTGSnow, 0.2, 0.3, -0.001, 0);
part_type_speed(FTGSnow, 0.05, 0.08, 0, 0);
part_type_direction(FTGSnow, 260, 270, -0.68, 0.01);
part_type_orientation(FTGSnow, 315.42, 611.75, 0.55, 0, false);
part_type_gravity(FTGSnow, 0.1, 270);
part_type_blend(FTGSnow, true);

pemi = part_emitter_create(FTGPrtSystem);
part_emitter_region(FTGPrtSystem, pemi, 0, 900, -64, 0, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(FTGPrtSystem, pemi, FTGSnow, 1);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//part_particles_create(FTGPrtSystem, random(room_width*2), random_range(-32,0), FTGSnow, 1);
instance_create(random_range(-64,864),-16,FTGSnow)
alarm[0] = 5
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
part_particles_clear(FTGPrtSystem);
part_emitter_destroy_all(FTGPrtSystem)
