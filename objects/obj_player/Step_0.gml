//Detect move angle
var move_h = input.right - input.left;
var move_v = input.down - input.up;
var direction_is_held = (move_h != 0 || move_v != 0);
if (direction_is_held) move_dir = point_direction(0, 0, move_h, move_v);


//Handle player state
switch(state) {
    case "idle":
        //Change state
        if (direction_is_held) state = "moving";
        
        //Sprite
        
        //Movements
        hsp = 0;
        vsp = 0;
        break;
    
    case "moving":
        //Change state
        if (!direction_is_held) state = "idle";
            
        //Sprite
        
        //Movement
        run = input.run;
        var speed_current = run ? speed_run : speed_walk;
        hsp = lengthdir_x(speed_current, move_dir);
        vsp = lengthdir_y(speed_current, move_dir);
            
        break;
}


//Collisions
x += hsp;
y += vsp;