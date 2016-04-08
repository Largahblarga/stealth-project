//Handles which direction to turn and by how much.
//Giving it its own script since most actors will use it.

//Arguments
//argument0 - the amount, in degrees, to turn
//argument1 - variable to control turn speed

while ( argument0 < -180 ) {
    argument0 += 360;
}
while ( argument0 > 180 ) {
    argument0 -= 360;
}

return argument0 * argument1;
