with spikeUp image_alpha = 1
with GeezerBlock
{
    image_alpha = 1
    switch other.phase
    {
        case 1: //SMW
            sprite_index = sprSMWTile
            if x == 0
            {
                if y == 352
                    image_index = 0
                if y > 352 && y < room_height-32
                    image_index = 1
                if y == room_height-32
                    image_index = 2
            }
            if y == room_height-32 && x >= 32 && x <= room_width-32
                image_index = 3
            if x == room_width-32
            {
                if y == room_height-32
                    image_index = 4
                if y > 352 && y < room_height - 32
                    image_index = 5
                if y == 352
                    image_index = 6
            }
            break
        case 3: //Mormal BG
        case 8:
            if !instance_exists(BonzoBG) instance_create(0,0,BonzoBG)
            with spikeUp sprite_index = sprGeezerSpike
            sprite_index = sprGeezerBlock
            break
        case 5: //Contra
            with BonzoBG instance_destroy()
            with spikeUp sprite_index = sprSpikeUp
            sprite_index = sprContraTile
            image_index = 1
            if y == 352
                image_index = 0
            if y == room_height-32 && x >= 32 && x <= room_width-33
                image_index = 0
            break
}
}
