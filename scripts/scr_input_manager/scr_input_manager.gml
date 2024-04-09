// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moveUp(){
	keyboard = keyboard_check(ord("W"))
	thumbstick = gamepad_axis_value(0, gp_axislv) < -.5
	return keyboard || thumbstick
}
function moveDown(){
	keyboard = keyboard_check(ord("S"))
	thumbstick = gamepad_axis_value(0, gp_axislv) > .5
	return keyboard || thumbstick
}
function moveLeft(){
	keyboard = keyboard_check(ord("A"))
	thumbstick = gamepad_axis_value(0, gp_axislh) < -.5
	return keyboard || thumbstick
}
function moveRight(){
	keyboard = keyboard_check(ord("D"))
	thumbstick = gamepad_axis_value(0, gp_axislh) > .5
	return keyboard || thumbstick
}
function interactInput(){
	keyboard = keyboard_check_released(ord("E"))
	controller = gamepad_button_check(0, gp_face1)
	return keyboard || controller
}
function equipInput(){
	keyboard = keyboard_check_released(ord("E"))
	controller = gamepad_button_check(0, gp_face1)
	return keyboard || controller
}
function pauseInput(){
	keyboard = keyboard_check_pressed(vk_escape)
	controller = gamepad_button_check_released(0, gp_start)
	return keyboard || controller
}
function anyInput(){
	keyboard = keyboard_check_released(vk_anykey)
	controller = gamepad_button_check_released(0, gp_face1) || gamepad_button_check_released(0, gp_face2) || gamepad_button_check_released(0, gp_face3) || gamepad_button_check_released(0, gp_face4)
	return keyboard || controller
}
function rightInventoryInput(){
	keyboard = keyboard_check_released(vk_right)
	controller = gamepad_button_check_released(0, gp_padr)
	return keyboard || controller
}
function leftInventoryInput(){
	keyboard = keyboard_check_released(vk_left)
	controller = gamepad_button_check_released(0, gp_padl)
	return keyboard || controller
}
function dropItemInput(){
	keyboard = keyboard_check_released(ord("X"))
	controller = gamepad_button_check_released(0, gp_face2)
}