//Defines reactions upon seeing various types of actors.
//For now, just reacts to players and other guards.

//OBVIOUSLY THIS DOESNT WORK AND NOW I HAVE TO REMEMBER HOW I FUCKED UP TO FIND OUT WHY

//Arguments
//argument0 - Actor that is reacting
//argument1 - Actor it is reacting to

/*switch ( object_get_name( argument1 ) ) {
    case "object_actor_player":
       var bullet = instance_create( x, y, object_projectile_base )
       with ( bullet ) {
            direction = argument0.image_angle;
            x += 16 * cos( degtorad( direction ) );
            y -= 16 * sin( degtorad( direction ) );
       }
}
