//Checks if there are obstructions that block vision between
//the object that calls it and another object.
//NOTE: Assumes simple, parallel sprites.
// More conplex sprites will need something fancier.

//OH GOD THIS IS SCARY WHEN I DONT REMEMBER WHAT THE FUNCTION DOES

//Arguments
//argument0 - object checking
//argument1 - object to look for

if (!script_canSeeInstance(argument0, argument1)) return false;

var xDifference = lengthdir_x( argument1.sprite_height / 2, argument1.image_angle + 90 );
var yDifference = lengthdir_y( argument1.sprite_height / 2, argument1.image_angle + 90 );

return (!collision_line( argument0.x, argument0.y, argument1.x + xDifference, argument1.y + yDifference, object_thing_wall, true, true ));
