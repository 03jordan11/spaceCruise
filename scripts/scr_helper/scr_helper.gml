// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function isInventoryFull(){
	invAmount = 0
	for(var i = 0; i < global.MAX_INVENTORY_SLOTS; i++){
		if(global.inventorySlots[i] != ""){
			invAmount++
		}
	}
	invFull = invAmount == global.MAX_INVENTORY_SLOTS
	return invFull
}