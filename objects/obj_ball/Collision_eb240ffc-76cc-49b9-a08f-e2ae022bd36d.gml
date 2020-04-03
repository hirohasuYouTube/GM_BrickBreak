/// @description Insert description here
// You can write your code in this editor
var _dir = direction - 180; // 移動方向を反転
while (place_meeting(x, y, other)) // コリジョン内にいる
    {
    // めり込み対策
    x += lengthdir_x(1, _dir);
    y += lengthdir_y(1, _dir);
    }
move_bounce_all(true); // バウンドさせる
if speed < 12 speed += 0.1; // ボールのスピードアップ
instance_destroy(other); // ブロックを消す
