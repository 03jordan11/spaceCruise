/// @description draws inventory gui to screen
// You can write your code in this editor

for(var i = 0; i < 5; i++){
	var yOffset = 0
	if (global.inventorySlots[i] != ""){
		yOffset = -40
		if(global.inventorySlotSelected == i+1){
			yOffset -= 20
		}
	}
	
	draw_sprite(spr_inv_box, -1, 640 + (128*i), 1040 + yOffset)
	
	if (global.inventorySlots[i] != ""){
		_sprite = object_get_sprite(global.inventorySlots[i])
		draw_sprite(_sprite, -1, 650 + (128*i), 1050 + yOffset)
	}
}
