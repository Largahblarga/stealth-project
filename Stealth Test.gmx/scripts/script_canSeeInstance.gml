//Determine if the object is within the vision cone (not range!)
//of the object that calls it.
//NOTE: Should be called by the detector!

//Arguments
//argument0 - detector
//argument1 - detectee

var xDifference = argument1.x - argument0.x;
var yDifference = argument1.y - argument0.y;
var halfCone = argument0.visionCone / 2;

if ( dot_product_normalised( lengthdir_x( 1, argument0.image_angle ), lengthdir_y( 1, argument0.image_angle ), 
        xDifference, yDifference ) >= cos( degtorad( halfCone ) ) ) {
        return ( script_canSeeUnobstructed( argument0, argument1 ) );
} else {
    return false;
}