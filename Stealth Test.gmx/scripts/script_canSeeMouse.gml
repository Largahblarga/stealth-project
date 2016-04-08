//Checks if an instance can see the mouse

//Arguments
//argument0 - the instance to check

var xDifference = mouse_x - argument0.x;
var yDifference = argument0.y - mouse_y;
var halfCone = argument0.visionCone / 2;
var mouseDir = radtodeg(arctan2(yDifference, xDifference));

return (abs(angle_difference(argument0.image_angle, mouseDir)) <= halfCone);

//Probably has edge cases but I'll worry about that later.
