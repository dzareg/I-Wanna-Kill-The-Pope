global.Game_Title="I Wanna Kill The Pope";
if irandom(100) == 1 global.Game_Title = "gówno gra------"
global.Game_Start_Room = rCTB
global.savepath = working_directory+"/data/IWKTP_save"

global.debug = 0
global.godmode_key=vk_home
global.Debug_Baisoku_Key=ord('2')
global.Debug_Gensoku_Key=ord('3')
global.Debug_Tousoku_Key=ord('1')

global.godmode = false
global.infjump = false

global.Quick_Save=0
global.Quick_Save_Key=ord('S')
global.Lite_Mode=0
global.BGM_Forever=0
global.Menu_Select=0
global.polakous = 0
global.BackSpace_Warp=1
global.BackSpace_Warp_Room= rHubRoom
global.BackSpace_Warp_Key=vk_backspace

global.bannedcontrols[0] = vk_escape
global.bannedcontrols[1] = vk_f2
global.bannedcontrols[2] = vk_f3
global.bannedcontrols[3] = vk_f4

global.BloodEmitter_Face=0
global.BloodEmitter_3D=0

//A,D�Ńh�b�g�����o����@�\
//0=OFF 1=ON
global.Dot_Adjust=0
global.Dot_Adjust_Lkey=ord('A')
global.Dot_Adjust_Rkey=ord('D')

//���L�[�ŃX���C�h�o����@�\
//0=OFF 1=ON
global.Slide_Move=0
global.Slide_Move_Key=vk_down

//�}�E�X�J�[�\����ύX����@�\
//�g���Ƃ���Global Game Settings��Display the cursor�̃`�F�b�N��O���Ă�������
//0=OFF 1=ON
global.Mouse_Cursor_Change=0
global.Mouse_Cursor=objMouseCursor

//�Q�[����NumLock��������@�\
//0=OFF 1=ON
global.NumLock_Reset=1

//�|�[�Y�L�[��g����悤�ɂ���
//0=OFF 1=ON
global.Pause_Message=0

//gmk����̋N�����̂�Debug��I���ɂ���
if(string_pos("gm_ttt_",parameter_string(0))=0 || string_pos("gm_ttt_",working_directory)!=0 ){
 global.Debug_Mode=0
}else{
 //global.Debug_Muteki=1
}
