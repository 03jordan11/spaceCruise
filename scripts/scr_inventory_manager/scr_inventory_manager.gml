// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#region globals
global.inventorySlots = array_create(global.MAX_INVENTORY_SLOTS, "")
global.inventorySlotSelected = 0
global.inventoryItemEquipped = false
#endregion

function addItemToInventory(objIndex, item) {
	for(var i = 0; i < global.MAX_INVENTORY_SLOTS; i++){
		if(global.inventorySlots[i] == ""){
			global.inventorySlots[i] = objIndex
			instance_destroy(item)
			break
		}
	}
}

//Sets global variable so that uis can use it to draw/not
function equipItem(){
	if(global.inventoryItemEquipped = false && global.inventorySlotSelected != 0 && global.inventorySlots[global.inventorySlotSelected-1] != "" && equipInput()){
		global.inventoryItemEquipped = true
		show_debug_message("In equpi item")
	}
}