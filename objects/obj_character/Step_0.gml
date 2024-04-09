/// @description Insert description here
// You can write your code in this editor
var _speed = 7
var _targetAngle = image_angle
var _rotationSpeed = 3

//for movement, thinking we should try twin stick
if(moveUp()){
	y -= _speed
	_targetAngle = 90
}
if(moveDown()){
	y+=_speed
	_targetAngle = 270

}
if(moveLeft()){
	x-=_speed
	_targetAngle = 180
}
if(moveRight()){
	x+=_speed
	_targetAngle = 0
}

image_angle += shortest_direction(image_angle, _targetAngle) * min(abs(image_angle-_targetAngle), _rotationSpeed)


centerCameraOnPlayer(self)

//checking pickup event
pickupItem(self)

//check equip event
equipItem()


if(keyboard_check(vk_escape)){
	game_end()
}
