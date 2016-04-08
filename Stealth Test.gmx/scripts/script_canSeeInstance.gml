//Determine if the object is within the field of view - but not range - of the cone
//of the object that calls it.
//NOTE: Should be called by the detector!

//Arguments
//argument0 - detector
//argument1 - detectee

var xDifference = argument1.x - argument0.x;
var yDifference = argument0.y - argument1.y;
var halfCone = argument0.visionCone / 2;
var objDir = radtodeg(arctan2(yDifference, xDifference));

return (abs(angle_difference(argument0.image_angle, objDir)) <= halfCone);

//Mouse checker but generalized, shouldn't have any (unique) problems
