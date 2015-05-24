//Handles which direction to turn and by how much.
//Giving it its own script since most actors will use it.

//Arguments
//argument0 - difference between desired and current angles
//argument1 - the turning speed of the object

while ( argument0 < -180 ) {
    argument0 += 360;
}
while ( argument0 > 180 ) {
    argument0 -= 360;
}

return argument0 * argument1;