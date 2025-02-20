#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.savenum = 1;//�Z�[�u�t�@�C���ԍ�
global.difficulty = 3;//�Q�[���̓�Փx�i�ȒP�F�O���R�F����j
global.room_caption_def = "";
//���S���ƌo�ߎ���
global.death = 0;
global.time = 0;
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///music
ss_Init();
musStageSelect = ss_LoadSound(working_directory+"/music/stageselect.ogg",1)
musTitle = ss_LoadSound(working_directory+"/music/title.ogg",1);               //0
musStage1 = ss_LoadSound(working_directory+"/music/stage1.ogg",1);             //1
musStage2 = ss_LoadSound(working_directory+"/music/stage2.ogg",1);             //2
musStage3 = ss_LoadSound(working_directory+"/music/stage3.ogg",1);             //3
musStage4 = ss_LoadSound(working_directory+"/music/stage4.ogg",1);             //4
//musStage5 = ss_LoadSound(working_directory+"/music/stage5.ogg",1);             //5
musSecret1 = ss_LoadSound(working_directory+"/music/secret1.ogg",1);             //6
musSecret2 = ss_LoadSound(working_directory+"/music/secret2.ogg",1);             //7
musGuyTower = ss_LoadSound(working_directory+"/music/stage1b.ogg",1);         //8
musWorldPeace = ss_LoadSound(working_directory+"/music/mboss2.ogg",1); //9
musGameOver = ss_LoadSound(working_directory+"/music/gameover.ogg",1);         //10
musNull = ss_LoadSound(working_directory+"/music/null.ogg",1);                 //11
musBossroom = ss_LoadSound(working_directory+"/music/bossroom.ogg",1);         //12
musBoss1 = ss_LoadSound(working_directory+"/music/boss1.ogg",1);               //13
musBoss2Phase1 = ss_LoadSound(working_directory+"/music/boss2_1.ogg",1);   //15
musBoss2Phase2 = ss_LoadSound(working_directory+"/music/boss2_3.ogg",1);   //16
musKTG = ss_LoadSound(working_directory+"/music/stage2b.ogg",1);   //17
musBarkaRap = ss_LoadSound(working_directory+"/music/boss2_2.ogg",1);   //18
musSecret3 = ss_LoadSound(working_directory+"/music/secret3.ogg",1);             //24
musSecret4 = ss_LoadSound(working_directory+"/music/secret4.ogg",1);             //25
musJustination = ss_LoadSound(working_directory+"/music/mboss1.ogg",1); //26
musSatan = ss_LoadSound(working_directory+"/music/mboss3.ogg",1); //27

vol =    global.options[0]*100//10000
volume = vol
gmvol =  vol/2
fadeoutvol = vol
filePlaying = -1;
musicfadeout = false
//sound_play(sndBlockChange)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//numlock��I�t�ɂ���
//SetGlobalOption����ݒ肵�Ă�������

//�f�o�b�O�p���G�L�[�̏���
//SetGlobalOption����ݒ肵�Ă�������
if(global.Debug_Mode){

if(keyboard_check_pressed(global.Debug_Baisoku_Key)){
room_speed += 50;
}else if(keyboard_check_pressed(global.Debug_Gensoku_Key)){
if(room_speed>10)room_speed -= 10;
}else if(keyboard_check_pressed(global.Debug_Tousoku_Key)){
room_speed = 50;
}

}

//QS�̏���
if(global.Quick_Save){
if(keyboard_check_pressed(global.Quick_Save_Key)){
saveGame();
}
}

//���b�Z�[�W����ɒ����ɕ\�������悤��
message_position(window_get_x()+window_get_width()/2-160,window_get_y()+window_get_height()/2-32)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var a,i;

//�_�Ŋ֐��̏���
for(i=0;i<=100;i+=1){

    if(global.flash_object[i]!=0){

        a=global.flash_object[i]
        global.flash_time[i]-=1

        if(global.flash_time[i]=0){

            global.flash_time[i]=global.flash_temptime[i]

            if(a.visible=1){
                a.visible=0
            }else{
                a.visible=1
                global.flash_count[i]-=1

                if(global.flash_count[i]=0){
                    global.flash_object[i]=0
                    global.flash_count[i]=0
                    global.flash_time[i]=0
                    global.flash_temptime[i]=0
                    a.flash=0
                }

            }
        }
    }
}

for(i=0;i<=100;i+=1){

    if(global.fade_object[i]!=0){

        a=global.fade_object[i]

        if(global.fade_mode[i]=0){

            a.image_alpha+=global.fade_speed[i]
            if(a.image_alpha>=1){
                global.fade_object[i]=0
                global.fade_speed[i]=0
                global.fade_mode[i]=0
                a.fadein_finish=1
            }

        }else{

            a.image_alpha-=global.fade_speed[i]
            if(a.image_alpha<=0){
                global.fade_object[i]=0
                global.fade_speed[i]=0
                global.fade_mode[i]=0
                a.fadeout_finish=1

            }

        }
    }
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

//view�֘A�̏���
var i;

for(i=0;i<=7;i+=1){

if(global.view_hspeed2[i]!=0 || global.view_vspeed2[i]!=0){
global.xview[i]+=global.view_hspeed2[i]
global.yview[i]+=global.view_vspeed2[i]
view_xview[i]=ceil(global.xview[i])
view_yview[i]=ceil(global.yview[i])
}

if(global.view_hstretchspeed[i]!=0 || global.view_vstretchspeed[i]!=0){
global.wview[i]+=global.view_hstretchspeed[i]
global.hview[i]+=global.view_vstretchspeed[i]
view_wview[i]=ceil(global.wview[i])
view_hview[i]=ceil(global.hview[i])
}

}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//backspace�L�[�œ���̕����Ƀ��[�v�o���܂�
//SetGlobalOption����ݒ肵�Ă�������

if global.BackSpace_Warp
{

if keyboard_check_pressed(global.BackSpace_Warp_Key) && global.achievement[9] == 1
{
    if room != rInit && room != rTitle && room != rSoundTest
    {
        global.grav=0
        room_goto(rHubRoom)
        with player  instance_destroy()
        with player2 instance_destroy()
    }
}

}

if musicfadeout
{
    if fadeoutvol > 0 fadeoutvol -= 50
    ss_SetSoundVol(curMusic, fadeoutvol)
}

with playerKiller
{
    switch sprite_index
    {
        case sprSpikeUp:
        case sprSpikeDown:
        case sprSpikeLeft:
        case sprSpikeRight:
        case sprMiniSpikeUp:
        case sprMiniSpikeDown:
        case sprMiniSpikeLeft:
        case sprMiniSpikeRight: image_speed = 1/5; break
    }
}

if keyboard_check_pressed(global.controls[7])
{
    if room != rInit && room != rSoundTest && room != rTitle loadGame()
    ss_SetSoundFreq(curMusic,44100)
    ss_StopSound(musGameOver)
    sound_stop_all()
    musicfadeout = false
}
#define Mouse_53
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.debug
{
    with player
    {
        x = mouse_x
        y = mouse_y
    }
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///stuff
var i;

//���[���̂P�b�Ԃ̃X�e�b�v����ݒ�
room_speed=50;
room_caption=global.Game_Title

global.room_caption_def = room_caption;

if(global.Mouse_Cursor_Change) {if(!instance_exists(global.Mouse_Cursor))instance_create(0,0,global.Mouse_Cursor)}

for(i=0;i<=7;i+=1)
{
    global.xview[i]=view_xview[i]
    global.yview[i]=view_yview[i]
    global.wview[i]=view_wview[i]
    global.hview[i]=view_hview[i]
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///music functions
musicfadeout = false
vol = 8000+global.options[0]*20
if global.options[0] == 0 vol = 0
fadeoutvol = vol
if vol != volume{volct = 1}
musicFunctions();
ss_SetSoundVol(world.curMusic,vol)
//cleanmem_init()
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///change spike sprites
with spikeUp
{
    switch room
    {
        case rCTB: sprite_index = CTBSpikeUp break
        case rPDHappy: if y > 144 sprite_index = PDSpikeUp break
        case rShowdown: image_blend = make_color_rgb(214,235,241) break
        case rHeavenTrap2:
        case rEdge: sprite_index = HT2SpikeUp break
        case rReviveTheGuy: sprite_index = RTGSpikeUp break
        case rBoss2C: sprite_index = sprGeezerSpike break
        case rVHSGM: sprite_index = VHSGMSpikeUp break
    }
}
with spikeDown
{
    switch room
    {
        case rCTB: sprite_index = CTBSpikeDown break
        case rPDHappy: if y > 144 sprite_index = PDSpikeDown break
        case rShowdown: image_blend = make_color_rgb(214,235,241) break
        case rHeavenTrap2:
        case rEdge: sprite_index = HT2SpikeDown break
        case rReviveTheGuy: sprite_index = RTGSpikeDown break
        case rVHSGM: sprite_index = VHSGMSpikeDown break
    }
}
with spikeLeft
{
    switch room
    {
        case rCTB: sprite_index = CTBSpikeLeft break
        case rPDHappy: if y > 144 sprite_index = PDSpikeLeft break
        case rShowdown: image_blend = make_color_rgb(214,235,241) break
        case rHeavenTrap2:
        case rEdge: sprite_index = HT2SpikeLeft break
        case rReviveTheGuy: sprite_index = RTGSpikeLeft break
        case rVHSGM: sprite_index = VHSGMSpikeLeft break
    }
}
with spikeRight
{
    switch room
    {
        case rCTB: sprite_index = CTBSpikeRight break
        case rPDHappy: if y > 144 sprite_index = PDSpikeRight break
        case rShowdown: image_blend = make_color_rgb(214,235,241) break
        case rHeavenTrap2:
        case rEdge: sprite_index = HT2SpikeRight break
        case rReviveTheGuy: sprite_index = RTGSpikeRight break
        case rVHSGM: sprite_index = VHSGMSpikeRight break
    }
}
if room == rVHSGM
{
    with minispikeUp sprite_index = VHSGMLSpikeUp
    with minispikeDown sprite_index = VHSGMLSpikeDown
    with minispikeLeft sprite_index = VHSGMLSpikeLeft
    with minispikeRight sprite_index = VHSGMLSpikeRight
}
with playerKiller
{
    switch sprite_index
    {
        case sprSpikeUp:
        case sprSpikeDown:
        case sprSpikeLeft:
        case sprSpikeRight:
        case sprMiniSpikeUp:
        case sprMiniSpikeDown:
        case sprMiniSpikeLeft:
        case sprMiniSpikeRight: image_index = irandom(9); break
    }
}
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop_all()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*
if(global.Debug_Mode=1){
draw_set_font(font24bold)
draw_set_color(c_red)
draw_set_halign(fa_left)

if(global.Debug_Muteki_Mode=0)draw_text(view_xview[0]+696,view_yview[0]+560,"Debug")
else draw_text(view_xview[0]+696,view_yview[0]+560,"Muteki")

}
*/

if(draw_music_count>0)
{
draw_music_count-=1
draw_set_font(font24bold)
draw_set_color(c_red)
draw_set_halign(fa_left)
if(global.music=0)draw_text(view_xview[0]+648,view_yview[0],"Music ON")
else draw_text(view_xview[0]+648,view_yview[0],"Music OFF")
}

draw_set_font(font24bold)
draw_set_color(c_red)
draw_set_halign(fa_left)
//draw_text(100,100,string(fadeoutvol))
#define KeyPress_27
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room != rInit && room != rSoundTest
{
    if room == rTitle
    {
        with TitleButton
        {
            if !buttonpressed && !bindingkey && menu != 0
            {
                futuremenu = 0
                buttonpressed = true
                scrSaveOptions()
            }
        }
    }
    else
    {
        file_delete("temp")
        game_end()
        ss_FreeSound(curMusic)
    }
}
#define KeyPress_33
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room != rGonerSecret && room != rATKSecret && global.debug == 1
{
    with player instance_destroy()
    with player2 instance_destroy()
    room_goto_next()
}
#define KeyPress_34
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room != rTitle && global.debug == 1
{
    with player instance_destroy()
    with player2 instance_destroy()
    room_goto_previous()
}
#define KeyPress_35
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room == rBoss1 || room == rBoss2A || room == rBoss2A || room == rBoss2B || room == rBoss2C exit
scrAchievementGet(26)
///the motivation message
//show_message("No hejka, co tam się z Tobą dzieje? Skąd to zwątpienie? Dlaczego chcesz teraz się poddać, tylko dlatego, że raz czy drugi Ci nie wyszło? 
//To nie jest żaden powód. Musisz iść i walczyć. Osiągniesz cel. Prędzej czy później go osiągniesz, ale musisz iść do przodu, przeć, walczyć o swoje. 
//Nie ważne, że wszystko dookoła jest przeciwko Tobie. Najważniejsze jest to, że masz tutaj wole zwycięstwa. To się liczy. Każdy może osiągnąć cel, nie ważne czy taki 
//czy taki, ale trzeba iść i walczyć. To teraz masz trzy sekundy żeby się otrąsnąć, powiedzieć sobie dobra basta, pięścią w stół, idę to przodu i osiągam swój cel. Pozdro.")
show_message("So hey, what's going on with you? Where did this hopelessness come from? Why do you want to give up now, just because, you didn't succeed once or twice? 
This is not a reason. You must go and fight. You wil reach the goal. You will reach it eventually, but you must go forward, push, fight for your right. 
It doesn't matter, that everything is against you. The most important thing is that you can win. That does matter. Everyone can reach their goal, whatever it is 
but you must go and fight. You've got 3 seconds to wake up, tell yourself LETS GO!, slam your desk, im going forward and im reaching my goal. Regards.")
#define KeyPress_36
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.debug == 1 global.godmode = !global.godmode
#define KeyPress_45
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player) && global.debug == 1
{
    sound_play(sndBlockChange)
    saveGame()
}
#define KeyPress_46
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.debug == 1 {global.infjump = !global.infjump}
#define KeyPress_113
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room != rInit && room != rSoundTest && room != rTitle
{
    file_delete("temp");
    sound_stop_all();
    ss_StopSound(curMusic)
    game_restart();
}
#define KeyPress_115
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if keyboard_check(vk_alt)
{
    file_delete("temp");
    ss_FreeSound(curMusic)
    game_end();
}
#define KeyPress_122
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.debug == 1 {for(i=0;i<5;i+=1) global.item[i] = 0}
#define KeyPress_123
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.debug == 1 {for(i=0;i<5;i+=1) global.item[i] = 1}
#define KeyRelease_84
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///warning test
if global.debug == 1
{
    with Polakous instance_destroy()
    with WarningBar instance_destroy()
    instance_create(view_xview[0]+800,view_yview[0],Polakous)
}
