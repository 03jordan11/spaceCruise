/// @description Insert description here
// You can write your code in this editor
var _speed = 7
var _targetAngle = image_angle
var _rotationSpeed = 3
if(keyboard_check(ord("W"))){
	y -= _speed
	_targetAngle = 90
}
if(keyboard_check(ord("S"))){
	y+=_speed
	_targetAngle = 270

}
if(keyboard_check(ord("A"))){
	x-=_speed
	_targetAngle = 180
}
if(keyboard_check(ord("D"))){
	x+=_speed
	_targetAngle = 0
}

image_angle += shortest_direction(image_angle, _targetAngle) * min(abs(image_angle-_targetAngle), _rotationSpeed)


centerCameraOnPlayer(self)
//if(!window_get_fullscreen()){
//	window_set_fullscreen(true)
//}
pickupItem(self)
if(keyboard_check(vk_escape)){
	game_end()
}
