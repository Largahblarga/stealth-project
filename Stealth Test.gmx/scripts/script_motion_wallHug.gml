//Determines which direction along a wall to travel toward.

//Arguments
//argument0 - the mover
//argument1 - the wall

var tempDir = (argument1.direction + 180) % 360;

if ( argument0.direction > tempDir ) {
    return tempDir + 90;
} else if ( argument0.direction < tempDir ){
    return tempDir - 90;
} else {
    return tempDir;
}
