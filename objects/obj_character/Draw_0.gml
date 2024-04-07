/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_color(c_red)
var distance = 50
var xCheck = x + lengthdir_x(distance, image_angle)
var yCheck = y + lengthdir_y(distance, image_angle)
draw_circle(xCheck, yCheck, 4, false)