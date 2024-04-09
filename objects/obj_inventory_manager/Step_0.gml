/// @description Insert description here
// You can write your code in this editor
if(rightInventoryInput()){
	if(global.inventorySlotSelected != 5){
		global.inventorySlotSelected++
		global.inventoryItemEquipped = false
	}
}
if(leftInventoryInput()){
	if(global.inventorySlotSelected != 1){
		global.inventorySlotSelected--
		global.inventoryItemEquipped = false
	}
}

//if user click button to equip, spawn object in front of player (but actually just set flag)