/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_left) // 左キーをチェック
    {
    // 画面左端を超えてないかチェック
    if x > sprite_get_xoffset(sprite_index) + spd
        {
        x -= spd; // Move the bat
        }
    else
        {
        x = sprite_get_xoffset(sprite_index); // 画面左端で固定
        }
    }
if keyboard_check(vk_right) // 右キーをチェック
    {
    // 画面右端を超えてないかチェック
    if x < room_width - sprite_get_xoffset(sprite_index) - spd
        {
        x += spd;
        }
    else
        {
        x = room_width - sprite_get_xoffset(sprite_index);
        }
    }
// ボールが発射前はバーにくっつける
with (obj_ball)
    {
    if !go x = other.x;
    }
