//Checks if there are obstructions that block vision between
//the object that calls it and another object.
//NOTE: Assumes simple, parallel sprites.
// More conplex sprites will need something fancier.

//Arguments
//argument1 - object checking
//argument1 - object to look for

var xDifference = lengthdir_x( argument1.sprite_height / 2, argument1.image_angle + 90 );
var yDifference = lengthdir_y( argument1.sprite_height / 2, argument1.image_angle + 90 );

return ( !collision_line( argument0.x, argument0.y, argument1.x + xDifference, argument1.y + yDifference, object_thing_solid, true, true ) || 
        !collision_line( argument0.x, argument0.y, argument1.x - xDifference, argument1.y - yDifference, object_thing_solid, true, true ) ||
        !collision_line( argument0.x, argument0.y, argument1.x, argument1.y, object_thing_solid, true, true ) );