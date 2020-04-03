/// @description Insert description here
// You can write your code in this editor
// ボールが画面の左右の端に来たら
if bbox_left < 0 || bbox_right > room_width
    {
    // ボールのめり込み対策
    x = clamp(x, sprite_get_xoffset(sprite_index), room_width - sprite_get_xoffset(sprite_index));
    // 移動方向を左右反転
    hspeed *= -1;
    }
// ボールが画面上端に来たら
if bbox_top < 0
    {
    // 移動方向を上下反転
    vspeed *= -1;
    }
else
    {
    // ボールが画面下端に来たら
    if bbox_bottom > room_height
        {
        // ボールを作りなおす
        instance_create_layer(xstart, ystart, layer, obj_ball);
        instance_destroy();
        }
    }
// バウンド時にスピードアップ
if speed < 12 speed += 0.1;
direction += 2 - random(4);
