//Finds the nearest instance of a certain object type, optionally within a certain range.
//Returns self if no other instances found.

//Arguments
//argument0 - Type of object to look for
//argument1 - Optional. Specifies a search range.

var temp = ds_priority_create();
ds_priority_add( temp, self, 100000000 );

with ( argument0 ) {
    if ( self == other ) { 
        continue; 
    }
    ds_priority_add( temp, self, point_distance( x, y, other.x, other.y ) );
    nearest = ds_priority_find_min( temp );
    ds_priority_destroy( temp );
    if ( argument1 == 0 || point_distance( nearest.x, nearest.y, self.x, self.y ) <= argument1 ) {
        return nearest;
    } else {
        return self;
    }
}