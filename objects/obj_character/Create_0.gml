/// @description Insert description here
// You can write your code in this editor


// Function to find the shortest direction to rotate
// Returns -1 for counter-clockwise, 1 for clockwise
function shortest_direction(from, to) {
    var difference = (to - from + 360) % 360;
    if(difference == 0) {
        return 0;
    } else if(difference > 180) {
        return -1; // Counter-clockwise is shorter
    } else {
        return 1; // Clockwise is shorter
    }
}
