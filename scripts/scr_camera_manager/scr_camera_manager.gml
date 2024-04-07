// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function centerCameraOnPlayer(player){
	halfViewWidth = camera_get_view_width(view_camera[0]) /2
	halfViewHeight = camera_get_view_height(view_camera[0]) /2

	camera_set_view_pos(view_camera[0], player.x - halfViewWidth, player.y - halfViewHeight)
}