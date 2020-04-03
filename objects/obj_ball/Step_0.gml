/// @description Insert description here
// You can write your code in this editor
if !go
    {
    // ボールが発射前でスペースキーが押されたら
    if keyboard_check_pressed(vk_space)
        {
        // ボールを発射
        go = true;
        speed = spd;
        direction = dir;
        }
    }
