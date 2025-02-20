var a;
a = argument0
if a != 9 instance_create(0,0,FullscreenStatic)
switch a
{
    case 1: //Rixenon + Missingno
        with BonzoBG instance_destroy()
        with spikeUp sprite_index = sprSpikeUp
        with GeezerBlock
        {
            sprite_index = sprBoss2P2Tile
            for(i = 352; i < 832; i += 64)
                if y == i image_index = 1
            for(i = 384; i < 832; i += 64)
                if y == i image_index = 2
            if x >= 32 && x <= room_width-33
                image_index = 0
        }
        background_visible[7] = true
        break
    case 2: //Demon kid + Rukito
        with BonzoPhase2BG sprite = 1
        with GeezerBlock
        {
            sprite_index = sprBoss2P2Tile
            image_index = 10
            if y == 352
                image_index = 11
            if y == room_height-32 && x >= 32 && x <= room_width-33
                image_index = 11
        }
        break
    case 3: //Crimson bat + Boshy
        with BonzoPhase2BG sprite = -1
        with spikeUp image_blend = c_red
        background_visible[5] = true
        background_visible[7] = false
        with GeezerBlock {sprite_index = sprBoss2P2Tile; image_index = 3}
        break
    case 4: //Game Terminators
        with spikeUp image_blend = c_white
        background_visible[4] = true
        background_visible[5] = false
        with GeezerBlock image_index = 4
        break
    case 5: //Big Rat + Cherry Papa
        with BonzoPhase2BG sprite = 0
        with GeezerBlock
        {
            sprite_index = sprFTGDirtTile
            if y == 352
                sprite_index = sprFTGSnowTile
            if y == room_height-32 && x >= 32 && x <= room_width-33
                sprite_index = sprFTGSnowTile
        }
        break
    case 6: //Exor + Piranha Plant
        with BonzoPhase2BG sprite = 1
        with GeezerBlock {sprite_index = sprBoss2P2Tile; image_index = 5}
        break
    case 7: //Baldis + Rakhris
        with BonzoPhase2BG sprite = -1
        with GeezerBlock
        {
            sprite_index = sprBG2Tile
            if y == 352
                {sprite_index = sprBoss2P2Tile; image_index = 6}
            if y == room_height-32 && x >= 32 && x <= room_width-33
                {sprite_index = sprBoss2P2Tile; image_index = 6}
        }
        background_visible[3] = true
        background_visible[4] = false
        break
    case 8: //Big Kid
        with GeezerBlock
        {
            sprite_index = sprBoss2P2Tile
            if y == room_height-32 && x >= 32 && x <= room_width-33
                image_index = 7
            if x == 0 || x == room_width-32
            {
                image_index = 8
                if y == room_height-32
                    image_index = 9
            }
            if y == 352
                image_index = 9
        }
        with BonzoPhase2BG sprite = 2
        background_visible[3] = false
        break
    case 9: //Back to normal
        instance_create(0,0,BonzoBG)
        with BonzoPhase2BG sprite = -1
        with GeezerBlock sprite_index = sprGeezerBlock
        with spikeUp sprite_index = sprGeezerSpike
        break
}
