//Checks if an instance can see the mouse

//Arguments
//argument0 - the instance to check

var xDifference = mouse_x - argument0.x;
var yDifference = argument0.y - mouse_y;
var halfCone = argument0.visionCone / 2;

return ( dot_product_normalised( lengthdir_x( 1, argument0.image_angle ), 
    lengthdir_y( 1, argument0.image_angle ),
    xDifference, yDifference ) >= cos( degtorad( halfCone ) ) );
  