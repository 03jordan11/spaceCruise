/// @description Insert description here
// You can write your code in this editor
draw_self()

//Draw item equipped
if (global.inventoryItemEquipped){
	var inventoryObj = global.inventorySlots[global.inventorySlotSelected-1]
	var objSprite = object_get_sprite(inventoryObj)
	
	var offset = 50
	var xOffset = x + lengthdir_x(offset, image_angle)
	var yOffset = y + lengthdir_y(offset, image_angle)
	draw_sprite(objSprite,0,xOffset, yOffset)
}

//Draw reticle for testing
draw_set_color(c_red)
var distance = 50
var xCheck = x + lengthdir_x(distance, image_angle)
var yCheck = y + lengthdir_y(distance, image_angle)
draw_circle(xCheck, yCheck, 4, false)