/// @description Insert description here
// You can write your code in this editor
if(rightInventoryInput()){
	if(global.inventorySlotSelected != 5){
		global.inventorySlotSelected++
	}
}
if(leftInventoryInput()){
	if(global.inventorySlotSelected != 1){
		global.inventorySlotSelected--
	}
}