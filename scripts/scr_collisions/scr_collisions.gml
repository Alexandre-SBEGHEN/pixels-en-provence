/**
 * Collide with an object
 * @param {Id.TileMapElement OR Asset.GMObject OR Id.Instance} object The instance or object to check.
 */
function scr_collisions(object) {
    //Horizontal collisions
    if (place_meeting(x + hsp, y, object)) {
        while (!place_meeting(x + sign(hsp), y, object)) x += sign(hsp);
        hsp = 0;
    }
    x += hsp;
    
    //Vertical collisions
    if (place_meeting(x, y + vsp, object)) {
        while (!place_meeting(x, y + sign(vsp), object)) y += sign(vsp);
        vsp = 0;
    }
    y += vsp;
}