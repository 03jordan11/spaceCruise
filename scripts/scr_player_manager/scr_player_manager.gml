// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function pickupItem(player){
	if (interactInput() && !isInventoryFull()){
		var xCheck = player.x + lengthdir_x(50, player.image_angle)
		var yCheck = player.y + lengthdir_y(50, player.image_angle)
		var possibleItem = instance_position(xCheck, yCheck, obj_item_parent)
		
		//check in front of player, if an item exists return that item
		//if carryable, add item to inventory and destroy instance
		//else if interactable, call its interact function
		//else if moveable, do something else
		if (possibleItem != noone){
			var item = possibleItem.object_index
			if (item.canCarry){
				addItemToInventory(item, possibleItem)
			}
		}

	}
}
	
function dropItem(player){
	if(dropItemInput()){
		dropItemFromInventory(player)
	}
}