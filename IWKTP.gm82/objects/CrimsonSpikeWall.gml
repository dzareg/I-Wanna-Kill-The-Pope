#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
warpcollision = false
triggered = false
tag = 5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
if warpcollision {with FakeWarp {image_angle += 16; vspeed += 0.1}}
if triggered && y < 704 {hspeed = 1.5}
if y >= 704 hspeed = 0
#define Collision_FakeWarp
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !warpcollision
{
    with other {hspeed = 1; vspeed = -2}
    warpcollision = true
}
