/// @description Insert description here
// You can write your code in this editor
vspeed *= -1; // 縦の移動速度を反転
var _s = speed; // 現在のスピードを確保
var _dir = point_direction(other.x, other.y + 32, x, y);
var _dist = point_distance(x, y, other.x, other.y + 32)
// バーに当たる位置によって反射角度をセット
motion_add(_dir, _dist / 5);
// 当たる前のスピードをセット
speed = _s;
